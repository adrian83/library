import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import Pagination from '../navigation/Pagination';

import { execGet, execDelete } from '../../web/ajax';
import { booksBeUrl, bookBeUrl, createBookUrl, showBookUrl, editBookUrl, showAuthorUrl } from '../../web/url';

class ListBooks extends Base {

    constructor(props) {
        super(props);
        this.changePage = this.changePage.bind(this);
    }

    componentDidMount() {
        const self = this;
        execGet(booksBeUrl())
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .catch(error => self.registerError(error));
    }

    changePage(no, size) {
        const self = this;
        execGet(booksBeUrl() + "?limit=" + size + "&offset=" + (no * size) + "&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .then(_ => self.forceUpdate())
            .catch(error => self.registerError(error));
    }

    delete(book) {
        const self = this;
        const deleteBookUrl = bookBeUrl(book.id)

        return function(event) {
            execDelete(deleteBookUrl)
                .then(function(_){
                    var filtered = self.state.page.books.filter((bk, index, arr) => bk.id !== book.id);
                    var page = self.state.page;
                    page.books = filtered;
                    self.setState({page: page})
                })
                .then(_ => self.registerInfo(`Book '${book.title}' removed`))
                .catch(error => self.registerError(error));

            event.preventDefault();
        }
    }

    renderAuthors(authors) {
        var links = (authors ? authors : []).map(a => <span key={a.id} style={{ marginLeft: '10px', marginRight:'10px' }}><Link to={showAuthorUrl(a.id)} >{a.name}</Link></span>);
        return (<span>{links}</span>)
    }

    renderTableRow(book) {
        const bookId = book.id;
        const authors = this.renderAuthors(book.authors);
        const showUrl = showBookUrl(bookId);
        const editUrl = editBookUrl(bookId);

        return (
            <tr key={bookId}>
                <td><Link to={showUrl}>{book.title}</Link></td>
                <td>{authors}</td>
                <td>{book.description}</td>
                <td>
                    <Link 
                        style={{ marginLeft: '10px', marginRight:'10px' }} 
                        to={editUrl} >edit</Link>
                    <Link 
                        style={{ marginLeft: '10px', marginRight:'10px' }} 
                        to="" 
                        onClick={this.delete(book)}>delete</Link>
                </td>
            </tr>);
    }

    render() {
        if(!this.state || ! this.state.page){
            return (<div>waiting for data</div>);
        }

        const self = this;
        const createUrl = createBookUrl();

        const books = (this.state && this.state.page && this.state.page.books) ? this.state.page.books : [];
        var rows = books.map(book => self.renderTableRow(book));

        return (
            <div>
                <Title title="List Books" description="list of all created books"></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <div>
                    <Link to={createUrl}>Create book</Link>
                </div>
                <br/><br/>
                <div>
                    <table className="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Title</th>
                                <th scope="col">Author(s)</th>
                                <th scope="col">Description</th>
                                <th scope="col">Operations</th>
                            </tr>
                        </thead>
                        <tbody>
                            {rows}
                        </tbody>
                    </table>

                    <br/>

                    <Pagination total={this.state.page.total}
                                limit={this.state.page.limit}
                                offset={this.state.page.offset}
                                action={this.changePage}></Pagination>
                </div>
            </div>
        );
    }
}


export default ListBooks;

import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execGet, execDelete } from '../../web/ajax';
import { booksBeUrl, bookBeUrl, createBookUrl, showBookUrl, editBookUrl } from '../../web/url';

class ListBooks extends Base {


    componentDidMount() {
        const self = this;
        execGet(booksBeUrl())
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .catch(error => self.registerError(error));
    }

    delete(book) {
        const self = this;
        const deleteBookUrl = bookBeUrl(book.id)

        return function(event) {

            execDelete(deleteBookUrl)
                .then(function(response){
                    var filtered = self.state.page.books.filter((bk, index, arr) => bk.id !== book.id);
                    var page = self.state.page;
                    page.books = filtered;
                    self.setState({page: page})
                })
                .then(data => self.registerInfo(`Book '${book.title}' removed`))
                .catch(error => self.registerError(error));

            event.preventDefault();
        }
    }

    renderTableRow(no, book) {
        const bookId = book.id;
        const title = book.title;
        const description = book.description;

        const showUrl = showBookUrl(bookId);
        const editUrl = editBookUrl(bookId);

        return (
            <tr key={bookId}>
                <th scope="row">{no++}</th>
                <td><Link to={showUrl}>{title}</Link></td>
                <td>{description}</td>
                <td>
                    <Link to={editUrl} >edit</Link>&nbsp;&nbsp;&nbsp;
                    <Link to="" onClick={this.delete(book)}>delete</Link>
                </td>
            </tr>);
    }

    render() {
        const self = this;
        const createUrl = createBookUrl();

        var no = 1
        const books = (this.state && this.state.page && this.state.page.books) ? this.state.page.books : [];
        var rows = books.map(book => self.renderTableRow(no++, book));

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
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Description</th>
                                <th scope="col">Operations</th>
                            </tr>
                        </thead>
                        <tbody>
                            {rows}
                        </tbody>
                    </table>
                </div>
            </div>
        );
    }
}


export default ListBooks;

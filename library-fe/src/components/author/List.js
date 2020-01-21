import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import Pagination from '../navigation/Pagination';

import { execGet, execDelete } from '../../web/ajax';
import { authorsBeUrl, authorBeUrl, createAuthorUrl, showAuthorUrl, editAuthorUrl } from '../../web/url';

class ListAuthors extends Base {

    constructor(props) {
        super(props);
        this.changePage = this.changePage.bind(this);
    }

    componentDidMount() {
        const self = this;
        execGet(authorsBeUrl())
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .catch(error => self.registerError(error));
    }

    delete(author) {
        const self = this;
        const deleteAuthorUrl = authorBeUrl(author.id)

        return function(event) {

            execDelete(deleteAuthorUrl)
                .then(function(response){
                    var filtered = self.state.page.authors.filter((at, index, arr) => at.id !== author.id);
                    var page = self.state.page;
                    page.authors = filtered;
                    self.setState({page: page})
                })
                .then(data => self.registerInfo(`Author '${author.name}' removed`))
                .catch(error => self.registerError(error));

            event.preventDefault();
        }
    }

    renderTableRow(no, author) {
        const authorId = author.id;
        const name = author.name;
        const description = author.description;

        const showUrl = showAuthorUrl(authorId);
        const editUrl = editAuthorUrl(authorId);

        return (
            <tr key={authorId}>
                <th scope="row">{no++}</th>
                <td><Link to={showUrl}>{name}</Link></td>
                <td>{description}</td>
                <td>
                    <Link to={editUrl} >edit</Link>&nbsp;&nbsp;&nbsp;
                    <Link to="" onClick={this.delete(author)}>delete</Link>
                </td>
            </tr>);
    }

    changePage(no, size) {
        //console.log("page number ", no, " size ", size);
        const self = this;
        execGet(authorsBeUrl() + "?limit=" + size + "&offset=" + (no * size) + "&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .then(_ => self.forceUpdate())
            .catch(error => self.registerError(error));
    }

    render() {

        if(!this.state || ! this.state.page){
            return (<div>waiting for data</div>);
        }

        const self = this;
        const createUrl = createAuthorUrl();

        var no = 1
        const authors = (this.state && this.state.page && this.state.page.authors) ? this.state.page.authors : [];
        var rows = authors.map(author => self.renderTableRow(no++, author));

        return (
            <div>
                <Title title="List Authors" description="list of all created authors"></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <div>
                    <Link to={createUrl}>Create author</Link>
                </div>
                <br/><br/>
                <div>
                    <table className="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
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


export default ListAuthors;

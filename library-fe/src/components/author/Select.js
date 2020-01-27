import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Base from '../Base';

import Pagination from '../navigation/Pagination';

import { execGet } from '../../web/ajax';
import { authorsBeUrl } from '../../web/url';

class SelectAuthors extends Base {

    constructor(props) {
        super(props);
        this.changePage = this.changePage.bind(this);
        this.onSelect = this.onSelect.bind(this);
    }

    componentDidMount() {
        const self = this;
        execGet(authorsBeUrl() + "?limit=5&offset=0&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .catch(error => self.registerError(error));
    }

    changePage(no, size) {
        const self = this;
        execGet(authorsBeUrl() + "?limit=" + size + "&offset=" + (no * size) + "&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .then(_ => self.forceUpdate())
            .catch(error => self.registerError(error));
    }

    onSelect(author) {
        return (e) => {
            var selectFn = this.props.select;
            console.log("author", author);
            selectFn(author);
            e.preventDefault();
        }
    }

    bookAuthors() {
        return (this.state && this.state.page && this.state.page.authors) ? this.state.page.authors : [];
    }

    showSelectLink(author) {
        var selected = (this.props.selected ? this.props.selected : [])
            .find(a => a.id === author.id);
        return selected ? (<span></span>) : (<Link to="" onClick={this.onSelect(author)}>[select]</Link>);
    }

    renderTableRow(author) {
        return (
            <tr key={author.id}>
                <td>{author.name}</td>
                <td>{this.showSelectLink(author)}</td>
            </tr>);
    }

    render() {
        if(!this.state || ! this.state.page){
            return (<div>waiting for data</div>);
        }

        const self = this;
        var rows = this.bookAuthors().map(author => self.renderTableRow(author));

        return (
            <div>
                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <br/>
                <div>
                    <table className="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
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

export default SelectAuthors;

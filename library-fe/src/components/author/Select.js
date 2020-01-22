import React from 'react';

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
        this.ouUnselect = this.ouUnselect.bind(this);
    }

    componentDidMount() {
        const self = this;
        execGet(authorsBeUrl() + "?limit=5&offset=0&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .then(_ => self.markAuthors())
            .catch(error => self.registerError(error));
    }

    markAuthors() {
        console.log("mark users");

        var filterFn = this.props.filter;
        var page = this.state.page;

        page.authors = page.authors.map(function(author){
            
            author.selected = !filterFn(author);
            author.hide = false;

            console.log("author", author, " should be selected", filterFn(author));
            return author;
        });

        this.setState({page: page})
    }

    changePage(no, size) {
        //console.log("page number ", no, " size ", size);
        const self = this;
        execGet(authorsBeUrl() + "?limit=" + size + "&offset=" + (no * size) + "&sort=_id")
            .then(response => response.json())
            .then(data => self.setState({page: data}))
            .then(_ => self.markAuthors())
            .then(_ => self.forceUpdate())
            .catch(error => self.registerError(error));
    }

    ouUnselect(authorId) {
        var page = this.state.page;
        var author = page.authors = page.authors.find(a => a.id == authorId);

        author.hide = false;
        author.selected = false;
        //this.setState({page: page})
    }

    onSelect(author) {
        var self = this;
        return (e) => {
            //console.log("author", author.name, "clicked, author", author);
            var selectFn = this.props.select;
            author.hide = true;
            selectFn(author);
            e.preventDefault();
        }
    }

    showSelectLink(author) {

        var selected = this.props.selected ? this.props.selected : [];
        var sel = selected.find(a => a.id == author.id);

        // console.log("author", author.name, "is selected", author.selected, "author", author);
        // if(author.selected === true || author.hide === true) {
        //     return (<span></span>);
        // } 

        if(sel) {
            return (<span></span>);
        } 
        return (<a href="#" onClick={this.onSelect(author)}>[select]</a>);
    }


    renderTableRow(author) {
        return (
            <tr key={author.id}>
                <td>{author.name}</td>
                <td>
                    {this.showSelectLink(author)}
                </td>
            </tr>);
    }


    render() {
        if(!this.state || ! this.state.page){
            return (<div>waiting for data</div>);
        }



        const self = this;

        const authors = (this.state && this.state.page && this.state.page.authors) ? this.state.page.authors : [];
        var rows = authors.map(author => self.renderTableRow(author));

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

import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execGet } from '../../web/ajax';
import { editBookUrl, bookBeUrl, showAuthorUrl } from '../../web/url';

class ShowBook extends Base {

    constructor(props) { 
        super(props);
        this.hideError = this.hideError.bind(this);
    }

    componentDidMount() {
        const self = this;
        const bookId = this.props.match.params.bookId;

        execGet(bookBeUrl(bookId))
            .then(response => response.json())
            .then(data => self.setState({book: data}))
            .catch(error => self.registerError(error));
    }

    render() {
        if(!this.state || !this.state.book) {
            return (<div>waiting for book data</div>);
        }

        var bookData = this.renderBook(this.state.book);

        return (
            <div>
                {bookData}
            </div>
        );
    }

    renderInfoRow(label, value) {
        if(value) {
            return (
                <dl className="row">
                    <dt className="col-sm-3">{label}:</dt>
                    <dd className="col-sm-9">{value}</dd>
                </dl>);
        }
        return "";
    }

    renderAuthors(authors) {
        if(authors) {

            var paragraphs = authors.map(function(author){ 
                var showUrl = showAuthorUrl(author.id);
                return (<p key={author.id}><Link to={showUrl}>{author.name}</Link></p>);
            })

            return (
                <dl className="row">
                    <dt className="col-sm-3">Authors:</dt>
                    <dd className="col-sm-9">{paragraphs}</dd>
                </dl>);
        }
        return "";
    }

    renderBook(book) {
        var editUrl = editBookUrl(book.id);

        var desc = this.renderInfoRow("Description", this.state.book.description);
        var isbn = this.renderInfoRow("ISBN", this.state.book.isbn);
        var authors = this.renderAuthors(this.state.book.authors);

        return (
            <div>
                <Title title={this.state.book.title} description=""></Title>
                
                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                
                <div>
                    <Link to={editUrl}>edit</Link>
                </div>
            
                <br/>

                <div className="text-left">

                    <dl className="row">
                        <dt className="col-sm-3">Title:</dt>
                        <dd className="col-sm-9">{this.state.book.title}</dd>
                    </dl>

                    {desc}

                    {isbn}

                    {authors}

                </div>

            </div>
            );
    }

}

export default ShowBook;

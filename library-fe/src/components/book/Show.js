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

    

    renderBook(book) {
        var editUrl = editBookUrl(book.id);

        var authors = this.state.book.authors ? this.state.book.authors.map(function(author){ 
            var showUrl = showAuthorUrl(author.id);
            return (<div key={author.id}><Link to={showUrl}>{author.name}</Link></div>);
        }) : [];

        return (
            <div>
                <Title title={this.state.book.title} description=""></Title>
                
                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                
                <div>
                    <Link to={editUrl}>edit</Link>
                </div>
            
                <br/>

                <div>{this.state.book.description}</div>

                <br/>

                <div>ISBN: {this.state.book.isbn}</div>

                <br/>
                
                <div>Authors:</div>
                <div>{authors}</div>

            </div>
            );
    }

}

export default ShowBook;

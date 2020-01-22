import React from 'react';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import SelectAuthors from '../author/Select';

import { execPut, execGet } from '../../web/ajax';
import { bookBeUrl } from '../../web/url';

class UpdateBook extends Base {

    constructor(props) { 
        super(props);

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleTitleChange = this.handleTitleChange.bind(this);
        this.handleDescriptionChange = this.handleDescriptionChange.bind(this);

        this.notAnAuthor = this.notAnAuthor.bind(this);
        this.addAuthor = this.addAuthor.bind(this)
    }

    handleTitleChange(event) {
        var book = this.state.book ? this.state.book : {};
        book.title = event.target.value;
        this.setState({book: book});
    }

    handleDescriptionChange(event) {
        var book = this.state.book ? this.state.book : {};
        book.description = event.target.value;
        this.setState({book: book});
    }

    handleSubmit(event) {
        const self = this;
        const bookId = this.props.match.params.bookId
        const ids = (this.state.authors ? this.state.authors : []).map(a => a.id);

        const book = {
            title: self.state.book.title, 
            description: self.state.book.description,
            authors: ids
        };

        console.log("book ", book);
        
        execPut(bookBeUrl(bookId), book)
            .then(response => response.json())
            .then(data => self.setState({book: data}))
            .then(data => self.registerInfo("Book updated"))
            .catch(error => self.registerError(error));

        event.preventDefault();
    }

    componentDidMount() {
        const self = this;
        const bookId = this.props.match.params.bookId;
        
        execGet(bookBeUrl(bookId))
            .then(response => response.json())
            .then(function(data) {
                self.setState({book: data});
                self.setState({authors: data.authors});
            })
            .catch(error => self.registerError(error));
    }

    notAnAuthor(author) {
        //console.log("check author ", author);
        if(!this.state || !this.state.authors){
            return true;
        }
        var authors = this.state.authors.filter((a, index, arr) => a.id === author.id);
        //console.log("author ", author.name, "is an book author", (authors.length > 0));
        
        return authors.length === 0;
    }

    addAuthor(author) {
        //console.log("author ", author.id);
        var authors = ((this.state && this.state.authors) ? this.state.authors : [])
            .filter((a, index, arr) => a.id !== author.id);
        authors.push(author);
        this.setState({authors: authors});

        this.forceUpdate();
    }

    removeAuthor(authorId) {
        return (e) => {
            var authors = this.state.authors.filter((a, index, arr) => a.id !== authorId);
            this.setState({authors: authors});
            e.preventDefault();
        }
    }

    authorsList() {
        var self = this;
        return ((this.state && this.state.authors) ? this.state.authors : [])
            .map(a => (<li key={a.id}><div><span>{a.name}</span><a href="#" onClick={self.removeAuthor(a.id)}>[remove]</a></div></li>));
    }

    render() {

        if(!this.state || ! this.state.book){
            return (<div>waiting for data</div>);
        }

        return (
            <div>
                <Title title={this.state.book.title} description={this.state.book.description}></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <form onSubmit={this.handleSubmit}>

                    <div className="form-group">

                        <label htmlFor="titleInput">Title</label>

                        <input type="title" 
                                className="form-control" 
                                id="titleInput" 
                                placeholder="Enter title" 
                                value={this.state.book.title}
                                onChange={this.handleTitleChange} />
                    </div>

                    <div className="form-group">

                        <label htmlFor="descriptionInput">Description</label>

                        <input type="description" 
                                className="form-control" 
                                id="descriptionInput" 
                                placeholder="Enter description" 
                                value={this.state.book.description}
                                onChange={this.handleDescriptionChange} />
                    </div>

                    <div className="form-group">

                        <label>Authors</label>

                        <ul>
                            {this.authorsList()}    
                        </ul>
                    </div>

                    <div className="form-group">
                        <SelectAuthors 
                            filter={this.notAnAuthor}
                            select={this.addAuthor}
                            selected={this.state.authors}></SelectAuthors>
                    </div>

                    <button type="submit" 
                            className="btn btn-primary">Submit</button>

                </form>
            </div>);
    }
}

export default UpdateBook;

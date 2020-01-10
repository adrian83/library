import React from 'react';
import { Redirect } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execPost } from '../../web/ajax';
import { booksBeUrl, editBookUrl } from '../../web/url';


class CreateBook extends Base {

    constructor(props) { 
        super(props);

        this.state =  {
            title: '', 
            description: ''
        };

        this.hideError = this.hideError.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleTitleChange = this.handleTitleChange.bind(this);
        this.handleDescriptionChange = this.handleDescriptionChange.bind(this);
    }

    handleTitleChange(event) {
        this.setState({title: event.target.value});
    }

    handleDescriptionChange(event) {
        this.setState({description: event.target.value});
    }

    handleSubmit(event) {

        const self = this;

        const form = {
            title: this.state.title,
            description: this.state.description
        }

        execPost(booksBeUrl(), form)
            .then(response => response.json())
            .then(data => self.setState({book: data}))
            .catch(error => self.registerError(error));

        event.preventDefault();
    }

    render() {

        if(this.state && this.state.book) {
            var editUrl = editBookUrl(
                this.state.book.id);

            return (<Redirect to={editUrl} />);
        }

        return (
            <div>
                <Title title="Create book" description="create book"></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <form onSubmit={this.handleSubmit}>

                    <div className="form-group">
                        <label htmlFor="titleInput">Title</label>
                        <input type="title" 
                                className="form-control" 
                                id="titleInput" 
                                placeholder="Enter title" 
                                value={this.state.title}
                                onChange={this.handleTitleChange} />
                    </div>

                    <div className="form-group">
                        <label htmlFor="descriptionInput">Description</label>
                        <input type="description" 
                                className="form-control" 
                                id="descriptionInput" 
                                placeholder="Enter description" 
                                value={this.state.description}
                                onChange={this.handleDescriptionChange} />
                    </div>

                    <button type="submit" 
                            className="btn btn-primary">Create</button>
                </form>
            </div>
        );
    }
}

export default CreateBook;

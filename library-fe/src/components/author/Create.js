import React from 'react';
import { Redirect } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execPost } from '../../web/ajax';
import { authorsBeUrl, editAuthorUrl } from '../../web/url';


class CreateAuthor extends Base {

    constructor(props) { 
        super(props);

        this.state =  {
            name: '', 
            description: ''
        };

        this.hideError = this.hideError.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleNameChange = this.handleNameChange.bind(this);
        this.handleDescriptionChange = this.handleDescriptionChange.bind(this);
    }

    handleNameChange(event) {
        this.setState({name: event.target.value});
    }

    handleDescriptionChange(event) {
        this.setState({description: event.target.value});
    }

    handleSubmit(event) {
        const self = this;

        const form = {
            name: this.state.name,
            description: this.state.description
        }

        execPost(authorsBeUrl(), form)
            .then(response => response.json())
            .then(data => self.setState({author: data}))
            .catch(error => self.registerError(error));

        event.preventDefault();
    }

    render() {

        if(this.state && this.state.author) {
            var editUrl = editAuthorUrl(this.state.author.id, true);
            return (<Redirect to={editUrl} />);
        }

        return (
            <div>
                <Title title="Create author" description="create author"></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <form onSubmit={this.handleSubmit}>

                    <div className="form-group">
                        <label htmlFor="nameInput">Name</label>
                        <input type="name" 
                                className="form-control" 
                                id="nameInput" 
                                placeholder="Enter name" 
                                value={this.state.name}
                                onChange={this.handleNameChange} />
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

export default CreateAuthor;

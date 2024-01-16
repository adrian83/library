import React from 'react';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execPut, execGet } from '../../web/ajax';
import { authorBeUrl } from '../../web/url';
import { urlParamValue } from '../../web/params';

class UpdateAuthor extends Base {

    constructor(props) { 
        super(props);

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleNameChange = this.handleNameChange.bind(this);
        this.handleDescriptionChange = this.handleDescriptionChange.bind(this);
        this.showInfoIfNew = this.showInfoIfNew.bind(this);
    }

    handleNameChange(event) {
        var author = this.state.author ? this.state.author : {};
        author.name = event.target.value;
        this.setState({author: author});
    }

    handleDescriptionChange(event) {
        var author = this.state.author ? this.state.author : {};
        author.description = event.target.value;
        this.setState({author: author});
    }

    handleSubmit(event) {
        const self = this;
        const authorId = this.props.match.params.authorId

        const author = {
            name: self.state.author.name, 
            description: self.state.author.description
        };
        
        execPut(authorBeUrl(authorId), author)
            .then(_ => self.registerInfo("Author updated"))
            .catch(error => self.registerError(error));

        event.preventDefault();
    }

    showInfoIfNew() {
        var isNew = urlParamValue("new");
        if(isNew) {
            this.registerInfo("Author created")
        }
    }

    componentDidMount() {
        const self = this;
        const authorId = this.props.match.params.authorId;
        
        execGet(authorBeUrl(authorId))
            .then(response => response.json())
            .then(data => self.setState({author: data}))
            .then(_ => self.showInfoIfNew())
            .catch(error => self.registerError(error));
    }

    render() {

        if(!this.state || ! this.state.author){
            return (<div>waiting for data</div>);
        }

        return (
            <div>
                <Title title={this.state.author.name} description={this.state.author.description}></Title>

                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>

                <form onSubmit={this.handleSubmit}>

                    <div className="form-group">
                        <label htmlFor="nameInput">Name</label>
                        <input type="name" 
                                className="form-control" 
                                id="nameInput" 
                                placeholder="Enter name" 
                                value={this.state.author.name}
                                onChange={this.handleNameChange} />
                    </div>

                    <div className="form-group">
                        <label htmlFor="descriptionInput">Description</label>
                        <input type="description" 
                                className="form-control" 
                                id="descriptionInput" 
                                placeholder="Enter description" 
                                value={this.state.author.description}
                                onChange={this.handleDescriptionChange} />
                    </div>

                    <button type="submit" 
                            className="btn btn-primary">Update</button>

                </form>
            </div>);
    }
}

export default UpdateAuthor;

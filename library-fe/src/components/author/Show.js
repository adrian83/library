import React from 'react';
import { Link } from 'react-router-dom';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import { execGet } from '../../web/ajax';
import {  editAuthorUrl, authorBeUrl } from '../../web/url';

class ShowAuthor extends Base {

    constructor(props) { 
        super(props);
        this.hideError = this.hideError.bind(this);
    }

    componentDidMount() {
        const self = this;
        const authorId = this.props.match.params.authorId;

        execGet(authorBeUrl(authorId))
            .then(response => response.json())
            .then(data => self.setState({author: data}))
            .catch(error => self.registerError(error));
    }

    render() {
        if(!this.state || !this.state.author) {
            return (<div>waiting for author data</div>);
        }

        var authorData = this.renderAuthor(this.state.author);

        return (
            <div>
                {authorData}
            </div>
        );
    }

    renderAuthor(author) {
        var editUrl = editAuthorUrl(author.id);

        return (
            <div>
                <Title title={this.state.author.name} description={this.state.author.description} ></Title>
                
                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>
                
                <div>
                    <Link to={editUrl}>edit</Link>
                </div>
            </div>
            );
    }

}

export default ShowAuthor;

import React, { Component } from 'react';
import { Route, Redirect, Switch as RSwitch } from 'react-router-dom';

import Home from './../../Home';

import ListBooks from './../book/List';
import CreateBook from './../book/Create';
import UpdateBook from './../book/Update';
import ShowBook from './../book/Show';

import ListAuthors from './../author/List';
import CreateAuthor from './../author/Create';
import ShowAuthor from './../author/Show';
import UpdateAuthor from './../author/Update';

import { createBookUrl, showBookUrl, listBooksUrl, editBookUrl, 
    listAuthorsUrl, createAuthorUrl, showAuthorUrl, editAuthorUrl } from '../../web/url';

class Switch extends Component {

    render() {
        return (
            <RSwitch>
                <Route exact path="/" component={Home} />
                <Route path={createBookUrl()} component={() => <CreateBook/>} />
                <Route path={showBookUrl(":bookId")} render={(props) =>  <ShowBook {...props}/>} />
                <Route path={editBookUrl(":bookId")} render={(props) =>  <UpdateBook {...props}/>} />
                <Route path={listBooksUrl()} component={() => <ListBooks/>} />
                <Route path={createAuthorUrl()} component={() => <CreateAuthor/>} />
                <Route path={showAuthorUrl(":authorId")} render={(props) =>  <ShowAuthor {...props}/>} />
                <Route path={editAuthorUrl(":authorId")} render={(props) =>  <UpdateAuthor {...props}/>} />
                <Route path={listAuthorsUrl()} component={() => <ListAuthors/>} />
                
                <Redirect to="/" />
            </RSwitch>
        );
    }
}

export default Switch;

import React, { Component } from 'react';
import { Route, Redirect, Switch as RSwitch } from 'react-router-dom';

import Home from './../../Home';

import ListBooks from './../book/List';
import CreateBook from './../book/Create';
import UpdateBook from './../book/Update';
import ShowBook from './../book/Show';

import { createBookUrl, showBookUrl, listBooksUrl, editBookUrl } from '../../web/url';

class Switch extends Component {

    render() {
        return (
            <RSwitch>
                <Route exact path="/" component={Home} />
                <Route path={createBookUrl()} component={() => <CreateBook/>} />
                <Route path={showBookUrl(":bookId")} render={(props) =>  <ShowBook {...props}/>} />
                <Route path={editBookUrl(":bookId")} render={(props) =>  <UpdateBook {...props}/>} />
                <Route path={listBooksUrl()} component={() => <ListBooks/>} />
                <Redirect to="/" />
            </RSwitch>
        );
    }
}

export default Switch;

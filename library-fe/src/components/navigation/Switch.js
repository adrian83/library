import React, { Component } from 'react';
import { Route, Redirect, Switch as RSwitch } from 'react-router-dom';

import Home from './../../Home';
import Health from './../../Health';
import Logout from './../auth/Logout';
import Register from './../auth/Register';

import CreateTable from './../table/Create';
import ListTables from './../table/List';
import ShowTable from './../table/Show';
import UpdateTable from './../table/Update';

import CreateStage from './../stage/Create';
import UpdateStage from './../stage/Update';

import CreateActivity from './../activity/Create';
import UpdateActivity from './../activity/Update';

import ListBooks from './../book/List';

import { listTablesUrl, logoutUrl, registerUrl, 
    healthUrl, createTableUrl, createActivityUrl,
    editActivityUrl, createStageUrl, editStageUrl, 
    editTableUrl, showTableUrl, listBooksUrl } from '../../web/url';

class Switch extends Component {

    render() {

        const renderListTables = () => <ListTables/>; 

        return (
            <RSwitch>
                <Route exact path="/" component={Home} />
                <Route path={logoutUrl()} component={() => <Logout/>} />
                <Route path={registerUrl()} component={() => <Register/>} />
                <Route path={healthUrl()} component={() => <Health/>} />
                <Route path={listTablesUrl()} component={ renderListTables } />
                <Route path={createTableUrl()} component={() => <CreateTable/>} />
                <Route path={createActivityUrl(":tableId", ":stageId")} render={(props) => <CreateActivity {...props}/>} />
                <Route path={editActivityUrl(":tableId", ":stageId", ":activityId")} render={(props) => <UpdateActivity {...props}/>} />
                <Route path={createStageUrl(":tableId")} render={(props) => <CreateStage {...props}/>} />
                <Route path={editStageUrl(":tableId", ":stageId")} render={(props) => <UpdateStage {...props}/>} />
                <Route path={showTableUrl(":tableId")} render={(props) =>  <ShowTable {...props}/>} />
                <Route path={editTableUrl(":tableId")} render={(props) =>  <UpdateTable {...props}/>} />
                <Route path={listBooksUrl()} component={() => <ListBooks/>} />
                <Redirect to="/" />
            </RSwitch>
        );
    }
}

export default Switch;

import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import PropTypes from 'prop-types';

import Error from '../notification/Error';
import Info from '../notification/Info';
import Title from '../tiles/Title';
import Base from '../Base';

import securedGet, { securedDelete } from '../../web/ajax';
import {  editStageUrl, tableBeUrl, editTableUrl, 
    createStageUrl, stageBeUrl } from '../../web/url';

class ShowTable extends Base {

    static propTypes = {
        authToken: PropTypes.string
    };

    constructor(props) { 
        super(props);
        this.hideError = this.hideError.bind(this);
    }

    componentDidMount() {
        const self = this;
        const tableId = this.props.match.params.tableId;
        const authToken = this.props.authToken;

        securedGet(tableBeUrl(tableId), authToken)
            .then(response => response.json())
            .then(data => self.setState({table: data}))
            .catch(error => self.registerError(error));
    }

    render() {
        if(!this.state || !this.state.table) {
            return (<div>waiting for table data</div>);
        }

        var tableData = this.renderTable(this.state.table);

        return (
            <div>
                {tableData}
            </div>
        );
    }

    renderTable(table) {
        var self = this;

        var editTabUrl = editTableUrl(table.key.tableId);
        var newStgUrl = createStageUrl(table.key.tableId);

        var stages = table.stages.map(stage => self.renderStage(stage));

        return (
            <div>
                <Title title={this.state.table.title} description={this.state.table.description} ></Title>
                
                <Error errors={this.errors()} hideError={this.hideError} ></Error>
                <Info info={this.info()} hideInfo={this.hideInfo} ></Info>
                
                <div>
                    <Link to={editTabUrl}>edit</Link>&nbsp;&nbsp;&nbsp;&nbsp;
                    <Link to={newStgUrl}>new stage</Link>
                </div>
                <br/><br/>
                {stages}
            </div>
            );
    }

    deleteStage(stageKey) {
        const self = this;
        const authToken = this.props.authToken;
        const table = this.state.table;

        return function(event) {
            securedDelete(stageBeUrl(stageKey.tableId, stageKey.stageId), authToken)
                .then(function(response){
                    var filtered = table.stages.filter((stage, index, arr) => stage.key.stageId !== stageKey.stageId);
                    table.stages = filtered;
                    self.setState({table: table});
                })
                .catch(error => self.registerError(error));

            event.preventDefault();
        }
    }



    renderStage(stage) {
        const self = this;
        const stgKey = stage.key;

        var updateStageUrl = editStageUrl(stgKey.tableId, stgKey.stageId);

        
        return (
            <div key={stage.title}>
                <h3>{stage.title}</h3>
                <div>
                    <Link to={updateStageUrl}>update</Link>&nbsp;&nbsp;&nbsp;&nbsp;
                    <Link to="" onClick={this.deleteStage(stage.key)}>delete</Link>
                </div>
                <br/>
                <br/><br/>
            </div>);
    }


}

const mapStateToProps = (state) =>{
    return {authToken: state.authToken};
};

const mapDispatchToProps = (dispatch) => {
    return {};
};

ShowTable = connect(mapStateToProps, mapDispatchToProps)(ShowTable);

export default ShowTable;

import React, { Component } from 'react';



class Base extends Component {

    constructor(props) { 
        super(props);

        this.hideError = this.hideError.bind(this);
        this.hideInfo = this.hideInfo.bind(this);
    }

    registerError(err) {
        var errs = this.state && this.state.errors ? this.state.errors : [];
        errs.push(err);
        this.setState({errors: errs});
    }

    errors() {
        return this.state && this.state.errors ? this.state.errors : [];
    }

    hideError(errId) {
        if(this.state && this.state.errors){
            var errs = this.state.errors;
            errs = errs.filter((err, index, arr) => err.id !== errId);
            this.setState({errors: errs});
        }
    }

    registerInfo(msg) {
        var info = this.state.info;
        if(info){
            info.push(msg);
            this.setState({info: info});
        } else {
            this.setState({info: [msg]});
        }
    }

    info() {
        return this.state && this.state.info ? this.state.info : [];
    }

    hideInfo(msg) {
        if(this.state && this.state.info){
            var info = this.state.info;
            info = info.filter((i, index, arr) => i !== msg);
            this.setState({info: info});
        }
    }

    render() {
        return (
            <div>BASE BASE</div>
        );
    }
}

export default Base;

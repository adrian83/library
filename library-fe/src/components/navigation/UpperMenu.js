import React, { Component } from 'react';
import { Link } from 'react-router-dom';

import { listBooksUrl, listAuthorsUrl } from '../../web/url';


class UpperMenu extends Component {

    render() {
        return (
            <div className="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
                <h5 className="my-0 mr-md-auto font-weight-normal">library</h5>
                <nav className="my-2 my-md-0 mr-md-3">
                    <Link key="1" className="p-2 text-dark" to={listBooksUrl()}>Books</Link>
                    <Link key="2" className="p-2 text-dark" to={listAuthorsUrl()}>Authors</Link>
                </nav>
            </div>
        );
    }
}

export default UpperMenu;

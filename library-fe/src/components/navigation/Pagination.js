import React, { Component } from 'react';

class Pagination extends Component {


    changePage(no, size) {
        return (e) => {
            e.preventDefault();
            this.props.action(no, size);
        }
    }

    generateLinks() {
        var pagesNo = Math.ceil(this.props.total / this.props.limit);
        console.log("pages", pagesNo);
        var current = Math.floor(this.props.offset / this.props.limit);
        console.log("current", current);

        const limit = this.props.limit;

        var isFirst = current === 0;
        var isLast = (current + 1) === pagesNo;

        var list = [];

        if(isFirst) {
            list.push(
                (<li key={-2} className="page-item disabled">
                    <span className="page-link">Previous</span>
                </li>));
        } else {
            list.push(
                (<li key={-1} className="page-item">
                    <a className="page-link" href="#" onClick={this.changePage(current-1, limit)}>Previous</a>
                </li>));
        }


        for (var i = 0; i < pagesNo; i++) {

            if(i === current) {
                var h = (<li className="page-item active">
                        <span className="page-link">
                            {i+1}
                            <span className="sr-only">(current)</span>
                        </span>
                    </li>);
                list.push(h);
            } else {
                var e = (<li key={i} className="page-item"><a className="page-link" href="#" onClick={this.changePage(i, limit)}>{i+1}</a></li>);
                list.push(e);
            }
        }

        if(isLast) {
            list.push(
                (<li key={-3} className="page-item disabled">
                    <span className="page-link">Next</span>
                </li>));
        } else {
            list.push((
                <li key={-4} className="page-item">
                    <a className="page-link" href="#" onClick={this.changePage(current+1, limit)}>Next</a>
                </li>));
        }

        return list;
    }

    render() {

        const total = this.props.total;
        const limit = this.props.limit;
        const offset = this.props.offset;

        var elems = this.generateLinks();

        console.log("offset", offset);

        return (
            <nav aria-label="...">
                <ul className="pagination">
                    {elems}
                </ul>
            </nav>
        );
    }
}

export default Pagination;

import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class Pagination extends Component {


    changePage(no, size) {
        var self = this;
        return (e) => {
            e.preventDefault();
            //console.log("number", no, "size", size);
            self.props.action(no, size);
        }
    }

    generateLinks() {
        var pagesNo = Math.ceil(this.props.total / this.props.limit);
        var current = Math.floor(this.props.offset / this.props.limit);

        const limit = this.props.limit;

        const isFirst = current === 0;
        const isLast = (current + 1) === pagesNo;

        var list = [];

        if(isFirst) {
            list.push((<li key={-2} className="page-item disabled"><span className="page-link">Previous</span></li>));
        } else {
            list.push((<li key={-1} className="page-item"><Link className="page-link" onClick={this.changePage(current-1, limit)}>Previous</Link></li>));
        }

        for (var i = 0; i < pagesNo; i++) {
            if(i === current) {
                list.push((<li key={i} className="page-item active">
                                <span className="page-link">{i+1}<span className="sr-only">(current)</span></span>
                            </li>));
            } else {
                list.push((<li key={i} className="page-item"><Link className="page-link" onClick={this.changePage(i, limit)}>{i+1}</Link></li>));
            }
        }

        if(isLast) {
            list.push((<li key={-3} className="page-item disabled"><span className="page-link">Next</span></li>));
        } else {
            list.push((<li key={-4} className="page-item"><Link className="page-link" onClick={this.changePage(current+1, limit)}>Next</Link></li>));
        }

        return list;
    }

    render() {
        return (
            <nav aria-label="...">
                <ul className="pagination">
                    {this.generateLinks()}
                </ul>
            </nav>
        );
    }
}

export default Pagination;

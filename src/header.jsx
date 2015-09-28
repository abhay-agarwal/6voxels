import React from "react/addons"
import Router from "react-router"

let {Link} = Router

export default React.createClass({
  render: function() {
    return <div className="ui secondary menu">
    <div className="header item">Abhay Agarwal's Portfolio</div>
    <Link className="item" to="about">
      Statement
    </Link>
    <Link className="item" to="about">
      Bio
    </Link>
    <Link className="item" to="about">
      <i className="twitter icon"></i>
    </Link>
    <Link className="item" to="about">
      <i className="github icon"></i>
    </Link>
    <Link className="item" to="about">
      <i className="mail icon"></i>
    </Link>
    <div className="ui dropdown item" tabIndex="0">
      Dropdown
      <i className="dropdown icon"></i>
      <div className="menu" tabIndex="-1">
        <div className="item">Action</div>
        <div className="item">Another Action</div>
        <div className="item">Something else here</div>
        <div className="divider"></div>
        <div className="item">Separated Link</div>
        <div className="divider"></div>
        <div className="item">One more separated link</div>
      </div>
    </div>
    <div className="right menu">
      <div className="item">
        <div className="ui action left icon input">
          <i className="search icon"></i>
          <input type="text" placeholder="Search"></input>
          <button className="ui button">Submit</button>
        </div>
      </div>
      </div>
    </div>
  }
});

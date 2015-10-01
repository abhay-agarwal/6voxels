React = require("react/addons")
Router = require("react-router")
{Link} = Router

module.exports = React.createClass
  render: () ->
    <div className="ui text menu">
      <div className="filtering ui container">
        <div className="header item">Filter:</div>
        <a className="ui tag label">Academic</a>
        <a className="ui tag label">Professional</a>
        <a className="ui tag label">Independent</a>
        <a className="ui tag label">Artistic</a>
      </div>
      <div className="right menu">
        <div className="item">
          <div className="ui transparent icon input">
            <input type="text" placeholder="Search..."/>
            <i className="search link icon"></i>
          </div>
        </div>
      </div>
    </div>

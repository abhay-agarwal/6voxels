React = require("react/addons")
Router = require("react-router")
{Link} = Router

module.exports = React.createClass
  render: () ->
    <div className="primary ui heading">
      <div className="ui text container">
        <div className="ui grid">
          <div className="seven wide name column">
            <div className="ui header">Abhay</div>
            <div className="ui header">Agarwal</div>
          </div>
          <div className="three wide column"></div>
          <div className="six wide info column">
            <div className="ui header">STATEMENT</div>
            <div className="ui header">BIO</div>
            <div className="ui header">CONTACT</div>
          </div>
        </div>
      </div>
      <hr/>
    </div>

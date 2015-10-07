React = require("react/addons")
Router = require("react-router")
{Link} = Router

class Tag extends React.Component

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
            <div className="ui header">
              <a href="#" onClick={=> $("#statement").modal('show')}>STATEMENT</a>
            </div>
            <div className="ui header">
              <a href="#" onClick={=> $("#bio").modal('show')}>BIO</a>
            </div>
            <div className="ui header">
              <a href="mailto:abhay.agarwal@berkeley.edu">CONTACT</a>
            </div>
          </div>
        </div>
      </div>
      <hr/>
    </div>

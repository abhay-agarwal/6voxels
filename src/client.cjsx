window.$ = window.jQuery = require('jquery')
require('semantic-ui-css/semantic')
require('isotope-layout/dist/isotope.pkgd')
React = require('react/addons')
Router = require('react-router')
Header = require('./header')

{Route, RouteHandler, DefaultRoute, Link} = Router

Home = React.createClass
  render: -><div className="js-isotope stack"
                 data-isotope-options='{"itemSelector":".stackable","layoutMode":"masonry"}'>
    <div className="three column ui grid">
      <div className="stackable column">
        <div className="ui segment">
          <span>Project Name</span>
          <div style={{"margin-top": "1rem"}}>
            <p>This is a test piece of text for me here that is slightly too large for its own good</p>
          </div>
        </div>
      </div>
      <div className="stackable column">
        <div className="ui segment">
          <span>Project Name</span>
          <div style={{"margin-top": "1rem"}}>
            <p>This is a test piece of text for me here</p>
          </div>
    </div>
      </div>
      <div className="stackable column">
        <div className="ui segment">
          <span>Project Name</span>
          <div style={{"margin-top": "1rem"}}>
            <p>This is a test piece of text for me here</p>
          </div>
        </div>
      </div>
      <div className="stackable column">
        <div className="ui segment">
          <span>Project Name</span>
          <div style={{"margin-top": "1rem"}}>
            <p>This is a test piece of text for me here</p>
          </div>
        </div>
      </div>
    </div>
  </div>

About = React.createClass
  render: ->
    <div className="column">
      <div className="ui segment">
        <h4 className="black ui header">This is the about page.</h4>
      </div>
    </div>

Main = React.createClass
  render: ->
    <div>
      <Header/>
      <div className="main ui container">
        <RouteHandler {...@props}/>
      </div>
    </div>

routes =
  <Route path="/" handler={Main}>
    <DefaultRoute name="home" handler={Home}/>
    <Route name="about" handler={About}/>
  </Route>

$ ->
  Router.run routes, Router.HashLocation, (Handler) ->
    React.render(<Handler/>, document.body)

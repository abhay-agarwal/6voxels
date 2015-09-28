window.$ = window.jQuery = require('jquery')
require('semantic-ui-css/semantic')
require('isotope-layout/dist/isotope.pkgd')
React = require('react/addons')
Router = require('react-router')
Header = require('./header')
Data = require('./data')
{Route, RouteHandler, DefaultRoute, Link} = Router

globals = {
  isotope: {
    class: 'stackable',
    options: '{"itemSelector":".stackable","layoutMode":"masonry"}'
  }
}

Post = (content) ->
  <div className="#{globals.isotope.class} column" key={Math.random()}>
    <div className="ui segment">
      <span>{content.title}</span>
      <div style={{"marginTop": "1rem"}}>
        <p>{content.blurb}</p>
      </div>
    </div>
  </div>

Home = React.createClass
  render: -><div
      className="js-isotope stack"
      data-isotope-options={globals.isotope.options}>
    <div className="two column ui grid">
      {Post content for content in Data.posts}
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

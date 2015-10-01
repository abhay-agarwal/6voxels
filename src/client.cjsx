window.$ = window.jQuery = require('jquery')
require('semantic-ui-css/semantic')
require('isotope-layout/dist/isotope.pkgd')
React = require('react/addons')
Router = require('react-router')
Heading = require('./heading')
Menu = require('./menu')
Data = require('./data')
Post = require('./post')
{Route, RouteHandler, DefaultRoute, Link} = Router

Home = React.createClass
  render: ->
    <div className="main container">
      <div className="js-isotope stack" data-isotope-options={Data.isotope.options}>
        <div className="doubling three column ui grid">
          {<Post content={content} key={content.folder}/> for content in Data.posts}
        </div>
      </div>
    </div>

Statement = React.createClass
  render: ->
    <div id="statement" className="long ui modal">
      <h2 className="ui header">
        Test
      </h2>
    </div>

Bio = React.createClass
  render: ->
    <div id="bio" className="long ui modal">
      <h2 className="ui header">
        Test
      </h2>
    </div>

Contact = React.createClass
  render: ->
    <div id="contact" className="long ui modal">
      <h2 className="ui header">
        Test
      </h2>
    </div>

Footer = React.createClass
  render: ->
    <div className="ui inverted vertical footer segment">
      <div className="ui container">
        <div className="ui inverted divided equal height stackable grid">
          <div className="three wide column">
            Test
          </div>
          <div className="three wide column">
            Test
          </div>
          <div className="three wide column">
            Test
          </div>
        </div>
      </div>
    </div>

Main = React.createClass
  render: ->
    <div>
      <Heading/>
      <Menu/>
      <Home/>
      <Statement/>
      <Bio/>
      <Contact/>
      <Footer/>
    </div>

$ -> React.render(<Main/>, document.body)

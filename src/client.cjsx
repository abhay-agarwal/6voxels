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
      <h2 className="ui header">Bio</h2>
      <div className="content">
        <p>B.S. Electrical Engineering &amp; Computer Science (emph. Robotics), U.C. Berkeley 2012</p>
        <p>My research has investigated feedback and control systems from technical, scientific, and social aspects. By my high-school graduation, I had published research in the UT Austin Center for Non-Linear Dynamics dealing with metastable fluid states in both uniform and gradient density flows. While at UC Berkeley, I developed optimized control systems with NAO humanoid robots, self-driving cars, and autonomous quadcopters. I feel extremely privileged to have been part of the CITRIS People and Robots lab to design more life-like human-robot interactions. I previously worked at Sony’s Human-Computer Interaction lab as a user experience designer to create prototypes for interactive home and car environments. Our team created revolutionary interfaces for collaborative computing, connected devices, and ambient feedback. I currently work at San Francisco startup Mesosphere to design large-scale distributed self-healing infrastructure, for which I am leading an internet-of-things initiative to allow real-time data to flow through millions of sensors. In my spare time, I like to play with small-scale feedback systems such as my closed-loop aquaponics garden. I am an avid visual artist and I have created large-scale public installations. I am also a public speaker who has been funded to travel and speak about issues of social computing and civic engagement. Rather than see these interests as divergent, I feel that they contribute to an overall understanding of the various potential contexts for addressing human needs with creative computing.
        </p>
      </div>
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

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
    <div className="ui main container">
      <div className="js-isotope stack" data-isotope-options={Data.isotope.options}>
        <div className="doubling three column ui grid">
          {<Post content={content} key={content.cover}/> for content in Data.posts}
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
        <h3 className="ui dividing header"> Selected Work/Academic Experience</h3>
        <p>User Experience Researcher <strong>Sony (Tokyo)</strong> 2011</p>
        <p>B.S. Electrical Engineering &amp; Computer Science (emph. Robotics) <strong>U.C. Berkeley</strong> 2012</p>
        <p>Co-Founder <strong>Denizen</strong> 2014</p>
        <p>Growth Team <strong>Mesosphere</strong> Present</p>
        <h3 className="ui dividing header">About Me</h3>
        <img className="ui right floated image" src="images/me.jpg" style={{width: "200px"}}></img>
        <p>My research has investigated feedback and control systems from technical, scientific, and social aspects.
        </p>
        <p>By my high-school graduation, I had published research in the UT Austin <a href="http://chaos.utexas.edu/" target="_blank">Center for Non-Linear Dynamics</a> dealing with metastable fluid states in both uniform and gradient density flows. While at UC Berkeley, I developed optimized control systems with NAO humanoid robots, self-driving cars, and autonomous quadcopters. I feel extremely privileged to have been part of the <a href="http://citris-uc.org/initiatives/robotics-2/" target="_blank">CITRIS People and Robots lab</a> to design more life-like human-robot interactions. I previously worked at Sony’s Human-Computer Interaction lab as a user experience designer to create prototypes for interactive home and car environments. Our team created revolutionary interfaces for collaborative computing, connected devices, and ambient feedback. I currently work at San Francisco startup <a href="http://mesosphere.com" target="_blank">Mesosphere</a> to design large-scale distributed self-healing infrastructure, for which I am leading an internet-of-things initiative to allow real-time data to flow through millions of sensors. In my spare time, I like to play with small-scale feedback systems such as my closed-loop aquaponics garden. I am an avid visual artist and I have created large-scale public installations. I am also a public speaker who has been funded to travel and speak about issues of social computing and civic engagement. Rather than see these interests as divergent, I feel that they contribute to an overall understanding of the various potential contexts for addressing human needs with creative computing.
        </p>
      </div>
    </div>

Footer = React.createClass
  render: ->
    <div className="ui inverted vertical footer segment">
      <div className="ui center aligned container">
        <div className="ui horizontal inverted small divided link list">
          <div className="item">&copy; Abhay Agarwal</div>
          <a className="item" href="#" onClick={=> $("#statement").modal('show')}>Statement</a>
          <a className="item" href="#" onClick={=> $("#bio").modal('show')}>Bio</a>
          <a className="item" href="mailto:abhay.agarwal@berkeley.edu">contact</a>
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
      <Footer/>
    </div>

$ -> React.render(<Main/>, document.body)

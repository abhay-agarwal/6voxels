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
        Artist's Statement
      </h2>
      <div className="content">
        <p>In our society, most technical endeavors are highly specialized and carry little cross-cutting knowledge. Unfortunately, this stifles creativity and hinders progress. As a first-generation American, I am intimately aware of the digital divide and the lack of equitable access to resources around the world. India, my country of origin, contains one-third of the world’s poor, one-fifth of the world’s illiterate, and one-tenth of the world’s slum-dwellers. Importantly, these realities do not only point to the dire need for cheap and accessible life services. They also imply a great need for awareness, empathy, and opportunities to connect through other forms of communication.
        </p>
        <p>The modern world is more critically augmented by technology than ever before, yet our modes of interaction with even the cutting edge of products still seem brittle, inhuman, and confusing. Worst of all, seemingly straightforward interfaces can obliterate our assumptions about human communication - take, for example, video chatting. Due to our devices’ cameras never being at the point of our gaze during a video chat, we can never make direct eye contact. Psychological researchers have recently discovered that eye contact is one of the most crucial components of child social development because it creates strong emotional cues for empathy. Imagine if it were possible to bring direct eye contact back to this communication, and imagine how much richer the medium would become.
        </p>
        <p>Sometimes our technological interactions may be improved in subtle ways such as this example with video chatting. Other times, our advancements need to be daringly holistic such as with poverty in India. My goal with my studies at the Media Lab is to identify such opportunities for improvement, and address them through innovative solutions, rapid prototypes, and systems-level thinking. Bringing together several domains of expertise is crucial to this. As an initial offering, I have outlined three broadly promising areas in which this kind of improvement is likely to take place.
        </p>
        <ol className="ui list">
          <li><strong>Interfaces</strong>: The notion and scope of what we define as ‘interface’ will radically evolve over the next decade as devices become more integrated and embedded. It is possible to make objects and tools more responsive and reactive as well as more intuitive and aware. Additionally, interfaces may become more humanly intuitive (or human in general) to the point that no conscious ‘interaction’ is necessary. Creating such subconscious affordances and interactions will require us to reformulate many previous techniques.
          </li>
          <li><strong>Sensation</strong>: Both human sensation and device sensation are likely to improve, as different devices become ‘wearable’ and as more creative augmentations and prosthetics are developed. Devices are moving towards holistic sensation of their environment, such as autonomous vehicles and robots, which requires us to rethink how we program technology to calculate and infer. Entirely new forms of sensors are being developed rapidly, with the potential to cure diseases and identify danger more closely than ever. Some creativity will be required in designing these sensing systems to be trustworthy and intuitive.
          </li>
          <li><strong>Empathy</strong>: Might we be able to imbue objects with notions of trust, play, compassion, and awareness? Can entire large-scale systems such as mass transit become more ‘empathetic’ in some way, simply by using greater levels of coordinated awareness? Is there a way to communicate issues of social and political importance in more emotive, visceral ways beyond traditional media?
          </li>
        </ol>
      </div>
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
    <div className="ui vertical footer segment">
      <div className="ui center aligned container">
        <div className="ui horizontal small divided link list">
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

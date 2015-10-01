React = require('react/addons')

tags = {
	artistic: "a",
	professional: "p",
	academic: "b",
	independent: "i"
}

hash = (str) ->
	hash = 5381
	i    = str.length
	hash = (hash * 33) ^ str.charCodeAt(--i) while i > 0
	return hash >>> 0

data = {
	images: "images/",
	isotope: {
	 class: 'stackable',
	 options: '{"itemSelector":".stackable","layoutMode":"masonry"}'
	},
	tags: tags,
	hash: hash,
	posts: [
		{
			title: "CITRIS Personal Robots",
			folder: "citris",
			tags: [tags.academic],
			date: new Date(2012, 5),
			blurb: "Improving the expressiveness and functionality of humanoid robots through adaptive software mechanisms.",
			full:
				<div>
					<h3 className="ui dividing header">Motivation</h3>
					<p>During my final year of my bachelor's degree at UC Berkeley, I spent time in the Center for Information Technology Research in the Interest of Society (CITRIS) within their <a href="http://citris-uc.org/initiatives/robotics-2">People and Robots Initiative</a> lab.
					</p>
					<p>I had the opportunity to experiment with the NAO humanoid robot, developed by Aldebaran Robotics in France. Our lab purchased three of these NAO robots, which feature child-like actuated limbs capable of around fifty degrees of freedom. Additionally, they are equipped with two cameras (eyes), speakers, several navigational sensors, and a variety of impact sensors placed around their extremities.
					</p>
					<p>Upon experimenting with the built-in functionality of the NAO robots, I found their basic motor coordination and sensory abilities lacking. For example, minute differences in their leg motors would produce a 'leg dominance' that would quickly hinder proper movement and navigation.
					</p>
					<h3 className="ui dividing header">Project Description</h3>
					<p>My project with the NAO robots centered around integrating information from their visual sensors to allow the robots to self-adjust their movements and subsequent internal model to physical conditions (research which I carried over to autonomous quadcopters). Using various patterns observed from their visual field (such as corners, edges, etc.), we were able to construct a basic computational understanding of the environment that allowed the robots to self-regulate their movement with regard to these observed 'landmarks'.
					</p>
					<p>Our research produced a thesis written about methods of approximating various distance values to adjust internal constants and produce intelligent movement, as well as a human-interaction mode where the robot was able to follow a predetermined object (in our case a small red ball). As the NAO reached the ball, we enabled it to actually grasp and retrieve the object itself.
					</p>
				</div>
		},
		{
			title: "Denizen",
			folder: "denizen",
			tags: [tags.professional],
			date: new Date(2014, 9),
			blurb: "A local media outlet that allows users to create geographically tagged stories and promote other stories in real-time.",
			full:
				<div>
					
					<p>Around the time I was given funding to travel through Europe, I became interested in the ability of societies to self-organize around local information. This was in part due to my fascination with technology-mediated social movements around the globe, as well as due to my frustration about finding relevant real-time local information.
					</p>
					<p>In the proceeding three months as I traveled from city to city, I realized that this was a much broader issue with communities around the world. As one enters a new city or area, the avenues of local information change or disappear entirely. Information on the web was usually outdated and unreliable, and usually written by other foreigners.
					</p>
					<p>I began to develop a web-based approach to local information sharing that took advantage of the naturally useful properties of maps. I ended up naming it Denizen, and cofounding a company around it with my good friend Collin Buchan.
					</p>
					<p>The application uses a well-tuned real-time geo-querying system that can load information as quickly as the user can pan or zoom the map. The front-end allows a user to upload text, image, video, and audio. Others may promote the content, making it appear to a wider geography of users.
					</p>
				</div>
		},
		{
			title: "You, Online",
			folder: "you online",
			tags: [tags.independent],
			date: new Date(2014, 8),
			blurb: "A series of public talks on online identity and the future of urban environments.",
			full:
				<div>
					In the spring of 2014, the municipal government of Oakland announced a new initiative by the Oakland police department to integrate police information and private surveillance footage in order to create a sophisticated dashboard of city intelligence. The centerpoint of this initiative was the so-called 'Fusion Center' in which data from public sources such as Twitter as well as feeds from private cameras were stored.
					While many members of Oakland activist groups used civil disobedience and community organizing tactics to address these developments, I chose to instead create a public forum for discussing how our perceptions of self and society were related to modern technological mediums.
					After my very first presentation of my talk, which lasted over three hours, I was approached by the founder of a social entrepreneurship nonprofit that offered to help bring my message to a broader audience. He introduced me to his program and eventually funded my voyage to Europe and travel between almost a dozen cities. I delivered the talk for free to a wide variety of groups and social spaces (many termed 'hackerspaces'). I was intrigued by the differences in concerns and ideas between different cities and audiences, as well as their own stories of how technology had radically shaped their lived experience within the last decade.
				</div>
		},
		{
			title: "Aquaponic Garden",
			folder: "aquaponic",
			tags: [tags.independent],
			date: new Date(2015, 6),
			blurb: "Closed-loop garden that recirculates water through an aquarium fish-tank, providing an immensely reduced environmental footprint.",
			full:
				<div>
					California is in a drought that threatens to wipe out a large portion of the crops and industries that sustain its population.
					I created an aquaponic garden system that uses scientific principles of
				</div>
		},
		{
			title: "Sony Car Interface Prototype",
			folder: "sony car",
			tags: [tags.professional],
			date: new Date(2011, 7),
			blurb: "Natural music interface for an experimental car interface device.",
			full:
				<div>
					I worked in one of Sony's headquarters in Shinagawa, Tokyo, to research novel forms of human-computer interaction. Unfortunately, since the heart of my work still functions inside a non-disclosure agreement, I can only speak of my projects broadly and was not allowed to take photos of my final product.
					One of my projects dealt with a prototype device that was being developed at the time. It was a vehicle-agnostic car-display with an excellent graphics library. My project centered around creating an excellent human-interaction for playing music inside the car. I had full creative autonomy over this project, from concept to implementation and code.
					I developed an emotive audio-visual interface to the music that used broad gestural sweeps to change the music's 'vibe', as well as and mood-enhancing ambient colors to affect the driver more intimately.
					The graphics visualization took advantage of the screen's high pixel density to display a multi-dimensional color gradient that adapted to the state of the music. It used a music-processing library to detect the intensity of various frequencies and change its visualization accordingly.
				</div>
		},
		{
			title: "Mesosphere Product Prototype",
			folder: "mesosphere",
			tags: [tags.professional],
			date: new Date(2015, 5),
			blurb: "Product prototype of autonomous distributed infrastructure.",
			full:
				<div>
					As the manager of Mesosphere's 'Growth' team, I was tasked with helping facilitate innovation within Mesosphere's server infrastructure platform. This could relate to any number of areas of innovation to introduce a better experience to managing large-scale server deployments.
					This product prototype video merges actual functionality of the software with an aspirational interface for datacenter operators.
				</div>
		},
		{
			title: "Scan. Join. Be Rewarded",
			folder: "scan join",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "A public art project meant to encourage playful confusion and uncertainty about the urban environment.",
			full:
				<div>
					I am always interested in the potential for people to re-think their everyday life, in a sort of unexpected individual or collective epiphany. I believe that these 'moments' are all around us, and a discerning eye may find immensely transformative ideas all around them. Unfortunately, most of us are locked in a cycle of experience where our senses are shut down to focus on a purely single-minded outcome - our job, our home, our school, etc.
					Therefore, I often attempt to create public art projects that help people 'pop' out of this cycle and momentarily find a greater truth. In this way, I feel that I am producing the modern day version of a Zen Koan.
					"Scan. Join. Be Rewarded" originated from the idea that most of technology and society has begun to adopt a minimalist language that often feels akin to Haiku. Indeed, the phrase was pulled quite innocuously from the packaging of a grocery product. I placed the phrase along with a completely ambiguous shape on a small handbill and distributed the handbill around local venues in San Francisco, California.
					When shown the handbill, most people react with complete confusion. Unable to "find out" the meaning of the phrase and without a tangible thing to pinpoint they start to derive magical explanations. The handbill must be embedded with an NFC tag, some will assert. Some have put their phone to the handbill or done other actions in an attempt to test various hypotheses about how to "scan" such an object. The triangle has vague insinuations to the Illuminati, itself a highly vague idea that lives in collective imagination more so than in reality. To some, the phrase reads as a highly unsettling case of the "implicit voice" in advertising breaking the fourth wall.
				</div>
		},
		{
			title: "Quadcopter Semi-Rigid Design",
			folder: "quadcopter",
			tags: [tags.academic],
			date: new Date(2012, 5),
			blurb: "Designing a cheap and durable quadrotor with adaptive software qualities that respond to imperfections such as vibration.",
			full: <div>This?</div>
		},
		{
			title: "Antifa",
			folder: "antifa",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of imaginary brands that question the impact of advertising and lifestyle media.",
			full: <div>This?</div>
		},
		{
			title: "Sony Home Theater Prototype",
			folder: "sony home",
			tags: [tags.professional],
			date: new Date(2012, 5),
			blurb: "Connected home-theater prototype that allowed a person to interact seamlessly between their television, soundsystem, phone, and internet.",
			full: <div>This?</div>
		},
		{
			title: "Crew",
			folder: "crew",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of imaginary brands that question the impact of advertising and lifestyle media.",
			full: <div>This?</div>
		},
		{
			title: "E",
			folder: "e",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of imaginary brands that question the impact of advertising and lifestyle media.",
			full: <div>This?</div>
		},
		{
			title: "6 Voxels of Separation",
			folder: "6 voxels",
			tags: [tags.professional],
			date: new Date(2012, 5),
			blurb: "My freelance projects live under this moniker.",
			full: <div>This?</div>
		},
		{
			title: "Pareidolia",
			folder: "pareidolia",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Musical noise-art recordings that use analog feedback and unusual samples to create unique generative sounds.",
			full: <div>This?</div>
		},
		{
			title: "Fourier Analysis of Rotational Fluid Flow",
			folder: "couette taylor",
			tags: [tags.academic],
			date: new Date(2012, 5),
			blurb: "Studying the time and frequency domain of rotational flow in both homogeneous and gradient density fluids, with applications to manufacturing and plantary atmospheric research.",
			full: <div>This?</div>
		}
	]
}

module.exports = data
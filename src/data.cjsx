React = require('react/addons')

images = "images/"

tags = {
	artistic: "artistic",
	professional: "professional",
	academic: "academic",
	independent: "independent"
}

hash = (str) ->
	hash = 5381
	i    = str.length
	hash = (hash * 33) ^ str.charCodeAt(--i) while i > 0
	return hash >>> 0

data = {
	images: images,
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
					<img className="ui small right floated image" src="images/citris/robot.jpg"></img>
					<p>During my final year of my bachelor's degree at UC Berkeley, I spent time in the Center for Information Technology Research in the Interest of Society (CITRIS) within their <a href="http://citris-uc.org/initiatives/robotics-2" target="_blank">People and Robots Initiative</a> lab.
					</p>
					<p>I had the opportunity to experiment with the <a href="https://www.aldebaran.com/en/humanoid-robot/nao-robot" target="_blank">NAO</a>, a humanoid robot developed by Aldebaran Robotics as a general purpose "platform". Our lab purchased three of these NAO robots, which feature actuated limbs capable of around fifty degrees of freedom. Additionally, they are equipped with two cameras (i.e. eyes), speakers, several navigational sensors, and a variety of impact sensors placed around their extremities.
					</p>
					<p>Upon experimenting with the built-in functionality of the NAO robots, I found their basic motor coordination and sensory abilities lacking. For example, minute differences in their leg motors would produce a 'leg dominance' that would quickly hinder proper movement and navigation. Furthermore, the onboard system for registering movement did not have a built in strategy for SLAM (simultaneous localization and mapping), rendering the robot unable to understand its position relative to its surroundings.
					</p>
					<h3 className="ui dividing header">Project Description</h3>
					<img className="ui medium right floated image" src="images/citris/visual.jpg"></img>

					<p>My work with the NAO robots centered around integrating information from their visual sensors to allow the robots to self-adjust their movements and subsequent internal model to physical conditions (research which I subsequently carried over to autonomous quadcopters). Using various patterns observed from their visual field (such as corners, edges, etc.), we were able to construct a basic computational understanding of the environment that allowed the robots to self-regulate their movement with regard to these observed 'landmarks'.
					</p>
					<p>Our software was able to use progressive-approximation of the distance of a visually significant pattern such as an area of color or pattern. Using a mixture of Kalman filtering, blob detection, and an optimized SLAM model, we were able to construct a rough map of the NAO's surroundings. After implementing our system, a robot with discrepancies in its motors would be able to move straight.
					</p>
					<img className="ui large left floated image" src="images/citris/paper.jpg"></img>
					<p>Our research produced a thesis written about methods of approximating various distance values to adjust internal constants and produce intelligent movement, as well as a human-interaction mode where the robot was able to follow a predetermined object (in our case a red ball of known diameter). As the NAO reached the ball, we enabled it to actually grasp and retrieve the object itself, proving the success of the algorithm.
					</p>
					<h3 className="ui dividing header" style={{clear: "both"}}>Further Applications</h3>
					<p>This project progresses the state of onboard machine intelligence in robots with compact form-factors and the possibly of defective parts. Perhaps future robots will me made from cheaper commodity parts with extremely robust software to detect and manage defects. Due to the NAO's hefty price tag of $15,000 this contributes to the overall accessibility of robots to more affordable environments.
					</p>
				</div>
		},
		{
			title: "Denizen.io",
			folder: "denizen",
			tags: [tags.professional],
			date: new Date(2014, 9),
			blurb: "A local media outlet that allows users to create geographically tagged stories and promote other stories in real-time.",
			full:
				<div>
					<a href="http://denizen.io" target="_blank"><img className="centered ui image" src="images/denizen/logo.png"></img></a>
					<h3 className="ui dividing header">Motivation</h3>
					<img className="ui medium right floated image" src="images/denizen/post.jpg"></img>
					<p>Around the time that I was given funding to travel through Europe, I developed an interest in the ability of societies to self-organize around local information. This was in part due to my fascination with technologically-mediated social movements around the globe (such as Occupy and the Arab Spring), as well as due to my frustration about finding relevant real-time local information.
					</p>
					<p>In the proceeding three months as I traveled from city to city on my speaking tour, I found this lack of information to be a much broader issue with communities around the world. As one enters a new city or area, the avenues of local information change or disappear entirely. Information on the web was usually outdated and unreliable, and usually written by foreigners.
					</p>
					<h3 className="ui dividing header">Project Description</h3>
					<p>I spent several months developing a web-based approach to local information sharing that took advantage of the naturally useful properties of maps. I named it Denizen, and cofounded it with my close friend Collin Buchan.
					</p>
					<p>The application uses a well-tuned real-time geo-querying system that can load information as quickly as the user can pan or zoom the map. The front-end allows a user to upload text, image, video, and audio. Others may promote the content, making it appear to a wider geography of users.
					</p>
					<h3 className="ui dividing header">Design Principles</h3>
					<p>Denizen uses a model of user interaction inspired by Reddit, where content can be 'crowdvoted' in order to naturally promote more interesting information and encourage engagement. The convenient intrinsic properties of maps are exploited whenever possible to create the most seamless experience. When the map is zoomed in, the bubbles separate into individual posts. When zoomed out, less relevant content disappears and the top content surfaces. In this way, the product can be useful at any magnification. When fully zoomed out, the entire world can communicate about the top rated content. When fully zoomed in, content can even be discussed from even within your neighborhood or apartment complex.
					</p>
					<h3 className="ui dividing header">Related Initiatives and Projects</h3>
					<p>This research relates to a variety of other projects, commercial and nonprofit. There are currently several initiatives around the use of the phone number '311' to report municipal issues. Some have suggested that this could constitute an early form of improved civic engagement.
					</p>
					<p>Several commercial projects exist to promote local information, with varying degrees of success. The mobile app Foursquare initially succeeded in gaining momentum but was eventually refocused toward restaurant reviews. Other small-scale attempts at developing a 'community' failed, purely due to user aquisition troubles and a lack of a persistent trustworthy community. In that regard, Denizen allowed users to post anonymously in order to allow community awareness projects to cement into the product.
					</p>
					<h3 className="ui dividing header">Screenshots</h3>
					<img className="centered ui image" src="images/denizen/screenshot.jpg"></img>
					<div className="ui divider"></div>
					<img className="centered ui image" src="images/denizen/screenshot2.jpg"></img>
					<div className="ui divider"></div>
					<img className="centered ui image" src="images/denizen/screenshot3.jpg"></img>
					<div className="ui divider"></div>
					<img className="centered ui image" src="images/denizen/screenshot4.jpg"></img>
				</div>
		},
		{
			title: "You, Online",
			folder: "you",
			tags: [tags.independent],
			date: new Date(2014, 8),
			blurb: "A series of public talks on online identity and the future of urban environments.",
			full:
				<div>
					<h3 className="ui dividing header">Description</h3>
					<p>"You, Online" was a public workshop that I delivered to audiences all over Europe in the summer of 2014. It focused on the variety of issues relating to how the internet and modern technology affect identity and collective organization. It navigated across disciplines of urban studies, politics, computer networking, and social theory. However, the discussion was intentionally open-ended and conversations started in the audience were never inhibited.
					</p>
					<img className="centered ui image" src="images/you/slide.jpg"></img>
					<h3 className="ui dividing header">Background</h3>
					<p>In the spring of 2014, the municipal government of Oakland announced a new initiative by the Oakland police department to integrate police information and private surveillance footage in order to create a sophisticated dashboard of city intelligence. The centerpoint of this initiative was the so-called 'Fusion Center' in which data from public sources such as Twitter as well as feeds from private cameras were stored.
					</p>
					<p>While many members of Oakland activist groups used civil disobedience and community organizing tactics to address these developments, I chose to instead create a public forum for discussing how our perceptions of self and society were related to modern technological mediums.
					</p>
					<p>After my very first presentation of my talk, which lasted over three hours, I was approached by the founder of a social entrepreneurship nonprofit that offered to help bring my message to a broader audience. He introduced me to his program and eventually funded my voyage to Europe and travel between almost a dozen cities.
					</p>
					<h3 className="ui dividing header">Journey</h3>
					<img className="ui large right floated image" src="images/you/london.jpg"></img>
					<p>I delivered the talk for free to a wide variety of groups and social spaces (many termed 'hackerspaces'). In order to promote the talk, I had to translate my flyer into several other languages. Communication between me and potential venues was often difficult and required human or automated translation. In every city that I gave a talk in, the presumptions and goals of the average individual were radically different. A different urban topography lended itself to widely varied experiences, and therefore ideals. Of course, it was fascinating to hear stories of how technology had radically shaped their lived experience within the last decade.
					</p>
					<p>Three of my venues were illegally occupied social centers in Spain, France, and Italy. In fact, the day of my talk in Paris, the social center was actually in the middle of a protest between the police and thirty-odd people. My host took me around to a separate hidden entrance in the back where I found the audience ready and waiting.
					</p>
					<img className="ui large left floated image" src="images/you/france.jpg"></img>
					<p>I invented Denizen, my local media platform, while traveling from city to city. I met too many people and friends of friends to count. I am thankful for all the individuals that blindly welcomed me into their spaces, as well as all the people that participated in the discussions with open minds.
					</p>
					<p>While I rode trains eastward through Austria to Hungary and Turkey, the irony was not lost on me that a western-raised person was traveling in exactly the opposite direction of the many Middle-Eastern and African refugees escaping hardship and violence in their countries. My American passport provided me a heightened level of citizenship that seemed to bleed into European states. I was free to travel in and out of most countries without any other documents or explanation.
					</p>
					<p>It is possible that travel itself will become virtual, and the lived experience that we capture in individually navigating foreign territories may become obsolete with the introduction of instantaneous information. Because of this, I feel extremely privileged to have taken part in an age-old tradition of nomadic expedition and sharing stories with strangers.
					</p>
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
					<img className="ui large left floated image" src="images/aquaponic/done.jpg"></img>
					<h3 className="ui dividing header">Motivation</h3>
					<p>California is in a drought that threatens to wipe out a large portion of the crops and industries that sustain its population. I created an aquaponic garden system that uses a clever chemical process to recirculate water from a hydroponic plant bed to a fish tank and then back to the plant bed. In recirculating the water, an aquaponic system drastically reduces the ecological footprint of the system to about 2-7% of the water use of a traditional growth system.
					</p>
					<h3 className="ui dividing header">Background</h3>
					<p>Aquaponics has roots in ancient civilizations, but only recently has it been studied in depth and optimized for small-scale urban applications. Many different configurations exist, with varying plant and aquatic species.
					</p>
					<p>Unlike most modern gardening constructs, aquaponic gardens are feedback systems where changes made to one component will have effects on other components and the future conditions of the entire system. Due to the unpredictable behavior of such oscillating systems, aquaponics is notoriously hard to get right and sustain without careful observation of its conditions. Furthermore, a change in the system (such as imbalanced pH) must be reversed gradually so as to not risk shocking the fish or disrupting the plant cycles.
					</p>
					<h3 className="ui dividing header">Implementation</h3>
					<img className="ui medium right floated image" src="images/aquaponic/roof.jpg"></img>
					<p>My garden was placed in a makeshift greenhouse made from plastic corrugated sheeting to block wind and trap warmth. A black rigid plastic tray that measured approximately 5' x 2' x 1' was purchased from Home Depot and a blue rain barrel was borrowed from a friend. I used the most common hydroponic medium, <a href="http://www.amazon.com/PLANT-GMC10L-Clay-Pebbles-4mm-16mm/dp/B009LNOZQ2" target="_blank">Hydroton</a>, to fill the tray. I purchased a simple <a href="http://www.amazon.com/EcoPlus-728310-Submersible-Pump-396GPH/dp/B0018X2XT4/ref=sr_1_1?s=lawn-garden&ie=UTF8&qid=1443729076&sr=1-1&keywords=submersible+water+pump" target="_blank">submersible water pump</a> to allow the water to flow from the barrel to the tray.
					</p>
					<p>An aquaponic system cannot simply flow the water through the plant bed because the plants would not have the chance to absorb nutrients from the quickly flowing water. Therefore, most systems (including mine) are of the "ebb and flow" variety, where the water sits in the tray for a short while before being automatically dumped out. In order to achieve this without multiple pumps, valves, and a complex electronic circuit, I made a complex S-shaped valve system (similar to the one in an ordinary toilet) to flush out the water after it reached a certain height. By regulating the speed of the water pump, I can effectively control how much time the water sits in the growth bed before overflowing the valve and dumping into the fish tank.
					</p>
					<img className="ui medium left floated image" src="images/aquaponic/tube.jpg"></img>
					<p>Tilapia are generally considered the optimal fish for aquaponic uses because they are resilient to condition changes and the slighly colder water of the Bay Area. However, those same qualities make them an invasive species and are therefore illegal to distribute in California. The next best and cheapest solution im my situation was goldfish. However, care must be taken to maintain a decent pH above 7 for the fish and a general temperature above 75F.
					</p>
					<p>I started with six kale starter plants and a thai holy basil plant that purportedly had anti-toxic properties. Unfortunately, the hydroton in the package was extremely pH negative and the water had to be refreshed with pH neutral hose water until the acidity leveled out. Additionally, household baking soda can be added to the water. to similar effect.
					</p>
					<h3 className="ui dividing header">Conclusion and Further Developments</h3>
					<p>My system is still very immature, and many opportunities exist to automate and monitor the system for more optimal outcomes. The feeding of aquaponic fishes is the easiest place for automation. Afterwards, pH and temperature sensors may be placed in the water and automatically controlled with a simple manual regulation via tablespoons of baking soda. The grow light, which is an extra strength halogen lamp, may be regulated to turn on only in periods of low ambient lighting in order to save light. Additionally, it may be turned off for several hours at night while the plants recharge.
					</p>
					<p>Overall, aquaponics presents a striking vision of the future of urban ecology. With a fraction of the water consumption and several accessible routes to monitoring and regulation of the system variables, a full ecological system may be created. Additionally, because the fishes can be eventually consumed by humans, the system is also more-or-less nutritionally complete and could provide a balanced system in irregular environments (such as space). This presents some fascinating opportunities for society as well as academia.
					</p>
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
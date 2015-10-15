React = require('react/addons')

images = "images/"

tags = {
	academic: "academic",
	professional: "professional",
	artistic: "artistic",
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
			title: "Aquaponic Garden",
			cover: "images/aquaponic/intro.jpg",
			tags: [tags.independent],
			date: new Date(2015, 6),
			blurb: "Closed-loop garden that recirculates water through an aquarium fish-tank, providing an immensely reduced environmental footprint.",
			full:
				<div>
					<img className="ui large left floated image" src="images/aquaponic/done.jpg"></img>
					<h3 className="ui dividing header">Motivation</h3>
					<p>California is in a drought that threatens to wipe out a large portion of the crops and industries that sustain its population. I created an aquaponic garden system that uses a clever chemical process to recirculate water from a hydroponic plant bed to a fish tank and then back to the plant bed. In recirculating the water, aquaponics drastically reduces the ecological footprint of the system to about 2-7% of the water use of a traditional growth system.
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
					<h3 className="ui dividing header" style={{"clear":"both"}}>Conclusion and Further Developments</h3>
					<p>My system is still very immature, and many opportunities exist to automate and monitor the system for more optimal outcomes. The feeding of aquaponic fishes is the easiest place for automation. Afterwards, pH and temperature sensors may be placed in the water and automatically controlled with a simple manual regulation via tablespoons of baking soda. The grow light, which is an extra strength halogen lamp, may be regulated to turn on only in periods of low ambient lighting in order to save light. Additionally, it may be turned off for several hours at night while the plants recharge.
					</p>
					<p>Overall, aquaponics presents a striking vision of the future of urban ecology. With a fraction of the water consumption and several accessible routes to monitoring and regulation of the system variables, a full ecological system may be created. Additionally, because the fishes can be eventually consumed by humans, the system is also more-or-less nutritionally complete and could provide a balanced system in irregular environments (such as space). This presents some fascinating opportunities for society as well as academia.
					</p>
				</div>
		},
		{
			title: "Denizen.io",
			cover: "images/denizen/intro.jpg",
			tags: [tags.professional],
			date: new Date(2014, 9),
			blurb: "A local media platform that allows users to create geographically tagged stories and promote other stories in real-time.",
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
			cover: "images/you/intro.jpg",
			tags: [tags.independent],
			date: new Date(2014, 8),
			blurb: "A series of public talks on online identity and the future of urban environments.",
			full:
				<div>
					<img className="centered ui image" src="images/you/slide.jpg"></img>
					<h3 className="ui dividing header">Description</h3>
					<p>"You, Online" was a public workshop that I delivered to audiences all over Europe in the summer of 2014. It focused on a variety of issues related the internet and the way that modern technology affects identity and collective organization. It navigated across disciplines of urban studies, politics, computer networking, and social theory. The discussion was intentionally open-ended and conversations started in the audience were never inhibited.
					</p>
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
					<p>I invented Denizen, my local media platform, while traveling from city to city. I met too many people and friends of friends to count. I am thankful for all the individuals that blindly welcomed me into their spaces, as well as all the people that participated in the discussions with open minds.
					</p>
					<img className="ui large left floated image" src="images/you/france.jpg"></img>
					<p>While I rode trains eastward through Austria to Hungary and Turkey, the irony was not lost on me that a western-raised person was traveling in exactly the opposite direction of the many Middle-Eastern and African refugees escaping hardship and violence in their countries. My American passport provided me a heightened level of citizenship that seemed to bleed into European states. I was free to travel in and out of most countries without any other documents or explanation.
					</p>
					<p>It is possible that travel itself will become virtual, and the lived experience that we capture in individually navigating foreign territories may become obsolete with the introduction of instantaneous information. I feel extremely privileged to have still taken part in the age-old tradition of nomadic expedition.
					</p>
				</div>
		},
		{
			title: "CITRIS Personal Robots",
			cover: "images/citris/intro.jpg",
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
					<p>This project progresses the state of onboard machine intelligence in robots that possess compact form-factors and cheap parts. Perhaps future robots will be made from cheaper commodity parts with extremely robust software to detect and manage defects. Due to the NAO's current hefty price tag of $15,000 this contributes to the overall accessibility of robots to more affordable environments.
					</p>
				</div>
		},
		{
			title: "Quadcopter Semi-Rigid Design",
			cover: "images/quadcopter/intro.jpg",
			tags: [tags.academic],
			date: new Date(2012, 5),
			blurb: "Designing a cheap and durable quadrotor with adaptive software qualities that respond to imperfections such as vibration.",
			full:
				<div>
					<h3 className="ui dividing header">Description</h3>
					<img className="ui small right floated image" src="images/quadcopter/assembled.jpg"></img>
					<p>As part of my embedded systems work with <a href="http://ptolemy.eecs.berkeley.edu/~eal/" target="_blank">Edward Lee</a> I worked on a collaborative effort to build and program robust on-board control software for complex mechatronic systems. One such system that is heavily studied is the quadcopter, which is usually designed using rigid materials. Even though a more flexible frame may benefit the overall durability of the system in the case of impact, such lightweight materials carry the risk of excessive vibration. Our system was able to overcome such limitations using a more complex onboard control system and better sensor sampling (to eliminate false frequencies with request to the Nyquist freqency).
					</p>
					<h3 className="ui dividing header">Initial Designs</h3>
					<img className="ui small left floated image" src="images/quadcopter/frame.jpg"></img>
					<p>Our initial research focused on the construction of the material itself to use purely designed properties to mitigate vibration. Such research focused on the easy of design due to the rapid ubiquity of 3-D printing. Our printed material was ABS plastic, which is a common material in industrial applications and semi-flexible. We started with a dense printing profile but we expanded to lighter-weight hex patterns later on.
					</p>
					<img className="ui small right floated image" src="images/quadcopter/board.jpg"></img>
					<p>We developed our own circuit board layout in order to fully control the properties and shape of the completed product. We used several commodity parts that are already cheaply mass produced. We used an <a href="http://www.digi.com/products/xbee-rf-solutions/modules/xbee-zigbee" target="_blank">Xbee ZigBee RF microcontroller</a> to communicate data back to our machine. We used a more expensive <a href="https://www.sparkfun.com/products/10736" target="_blank">9DOF Razor IMU (Inertial Measurement Unit)</a>. A high sampling rate in the IMU was crucial to the algorithm we implemented.
					</p>
					<h3 className="ui dividing header">Research</h3>
					<p>We experimented with several material types and were able to sense frequencies of vibration from the IMU in the quadcopter. Vibration frequently would destabilize the quadcopter in higher power and sometimes prevented the quadcopter from correctly lifting off at all. A naive PID controller while possibly sufficient was simply too brittle to provide competent mechatronic control.
					</p>
					<p>We designed an updated control algorithm that sensed the frequency of vibration and created a differential in the relevant motor and opposite motor to mitigate the overall motion of the quadrotor helicopter. Our code yielded a higher stability in the final quadrotor motion. Additionally, we were able to sense these motions in an arbitrary material density using the pure readings from our IMU. This contributed to the overall robustness of a given quadcopter system regardless of its construction.
					</p>
				</div>
		},
		{
			title: "Mesosphere Product Prototype",
			cover: "images/mesosphere/intro.jpg",
			tags: [tags.professional],
			date: new Date(2015, 5),
			blurb: "Product prototype of autonomous distributed infrastructure.",
			full:
				<div>
					<div className="ui embed" data-source="youtube" data-id="0I6qG9RQUnY"></div>
					<h3 className="ui dividing header">Project Description</h3>
					<p>As the manager of Mesosphere's Growth team, I was tasked with facilitating innovation within our server infrastructure platform. This could relate to any number of areas of innovation to introduce a better experience for managing large-scale server deployments.
					</p>
					<p>I created this video in collaboration with our Chief Marketing Officer to demonstrate actual functionality of the software along with an aspirational interface for datacenter operators. This video distills the last five years of innovation in container and software-defined-datacenter technologies into a package that clearly conveys the value of our product in almost any context.
					</p>
				</div>
		},
		{
			title: "Sony Car Interface Prototype",
			cover: "images/sony car/intro.jpg",
			tags: [tags.professional],
			date: new Date(2011, 7),
			blurb: "Natural music interface for an experimental car interface device.",
			full:
				<div>
					<h3 className="ui dividing header">Disclaimer</h3>
					<p>The work I did for Sony is protected under an NDA, with the exception of a brief overview for portfolio purposes. This description is truncated and images of the final project have been withheld.
					</p>
					<h3 className="ui dividing header">Project Description</h3>
					<p>This project was completed during my role Sony's Human-Computer Interaction department headquartered in Shinagawa, Tokyo. One of the products being developed was a in-car display interface. My project centered around creating a prototype of a novel human-interaction for playing music inside the car. I had full creative autonomy over this project, from concept to implementation and code.
					</p>
					<p>In the two-month-long time span, I developed an emotive audio-visual interface to playing music. It was designed to create a calmer and more emotionally soothing experience to the user in order to mitigate the stress of driving. The listener could use broad gestural sweeps to change the music's 'vibe'. This would be reflected not only in the music but in the color palette of the visualizer and the movement of the on-screen graphics. The visualization produced a multi-dimensional color gradient that adapted to the state of the music in real-time without the use of metadata. By decomposing the frequencies in the music the visualizer could recognize smooth tones versus intense bass or vocals. Due to the brightness of the screen, the visualizer effectively emitted its colors to the interior of the car. In night-time environments this effect may be especially pronounced.
					</p>
					<p>Overall, this product contributes to a more fluid, empathetic approach to computing. It eschews pure functionality for a better overall user experience. The prototype was completed and presented to the management of our division in August 2011.
					</p>
				</div>
		},
		{
			title: "Sony Home Theater Prototype",
			cover: "images/sony home/intro.jpg",
			tags: [tags.professional],
			date: new Date(2012, 5),
			blurb: "Connected home-theater prototype that allowed a person to interact seamlessly between their television, soundsystem, phone, and internet.",
			full:
				<div>
					<h3 className="ui dividing header">Disclaimer</h3>
					<p>The work I did for Sony is protected under an NDA, with the exception of a brief overview for portfolio purposes. This description is truncated and images of the final project have been withheld.
					</p>
					<h3 className="ui dividing header">Project Description</h3>
					<p>This project was completed during my role Sony's Human-Computer Interaction department headquartered in Shinagawa, Tokyo. One of the products being developed was a complete approach to home theater automation that connected the devices in the living room to create a smooth seamless experience that could easily switch between different forms of entertainment.
					</p>
					<p>In the one-month-long time span, I developed a web browser extension that would allow websites to request permission to control home theater devices over a new protocol called UPnP (which Sony predictively implemented on all their home theater devices). This would allow a user to seamless switch between activities such as web browsing to using their home theater or for applications to control both modalities. Additionally, I developed a prototype of a "universal mobile remote" that could display contextual remote controls depending on the device (which it would automatically detect). In this way, the home theater would become a single unit that could adaptively play slideshows, music, movies, and web content easily. This could turn web browsing into a more sensory or collaborative experience.
					</p>
					<p>This entire prototype required no special hardware other than the various standard Sony products or other compatible UPnP-enabled hardware. I created the design and code myself. A prototype of the end-to-end experience was completed in less than a month and presented to the management of my division.
					</p>
				</div>
		},
		{
			title: "Scan. Join. Be Rewarded",
			cover: "images/scan/intro.jpg",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "A public art project meant to encourage playful confusion and uncertainty about the urban environment.",
			full:
				<div>
					<img className="centered ui image" src="images/scan/public.jpg"></img>
					<h3 className="ui dividing header">Motivation</h3>
					<p>I believe in the potential to make people to re-think their everyday life through surprise or epiphany, similar to the way <em>Satori</em> is used in the Rinzai school of Zen Buddhism. Zen teachers would recite <em>koans</em>, or short stories designed to provoked instant realization in the student as to the true nature of reality.
					</p>
					<img className="ui large right floated image" src="images/scan/public2.jpg"></img>
					<p>Such revelatory moments exist all around us, and a discerning eye may find immensely transformative ideas in every nook of urban life. Unfortunately, most of us are locked in a cycle of experience where our senses are shut down in order to focus on a purely single-minded outcome - our job, our home, our school, etc. I often attempt to create public art projects that help people 'pop' out of this cycle of desensitization to momentarily find a greater truth. In this way, I feel that I am producing the modern day version of a Zen Koan.
					</p>
					<h3 className="ui dividing header">Installation</h3>
					<p>"Scan. Join. Be Rewarded" originated from the idea that most of technology and society has begun to adopt a minimalist language of advertising that often feels akin to Haiku. Indeed, the phrase was pulled quite innocuously from the packaging of a grocery product. I placed the phrase along with a completely arbitrary shape onto a small handbill and distributed the handbill around local venues in San Francisco, California.
					</p>
					<p>When shown the handbill, most people react with justified confusion. Unable to discern the true meaning of the phrase and without a stable interpretation, a passerby will start to derive altogether magical explanations. "The handbill must be embedded with an NFC tag," some will assert. Some have put their phone to the handbill or made other gestures in an attempt to test various hypotheses about how to "scan" such an object.
					</p>
					<p>In our culture of conspiracy theories, many of us seem to develop a fascination with the uncanny and inexplicable. One of these theories concerns the "Illuminati", a shadow organization that secretly orchestrates our reality on a massive scale, placing hidden clues everywhere. The triangle as a pure symbol seems to carry vague insinuations to the Illuminati, whose logo is the all-seeing eye atop the pyramid.
					</p>
					<p>To some, the phrase reads as a highly unsettling case of the "implicit voice" in advertising breaking the fourth wall. The phrase is left like an emperor without clothes, exposing the true schizophrenic nature of the media. While this public project is not meant to scare anyone or expose hypocrisy, no interpretation is incorrect, and any meaning that we choose to apply is a mirror into our own mental universe.
					</p>
				</div>
		},
		{
			title: "Antifa",
			cover: "images/antifa/intro.jpg",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of public artworks investigating the impact of advertising and lifestyle media on urban society.",
			full:
				<div>
					<h3 className="ui dividing header">Background</h3>
					<img className="ui large bordered right floated image" src="images/antifa/antifa.jpg"></img>
					<p>Many of my artworks speak to an idea that French philosopher Jean Baudrillard terms "the simulation", the notion that our society has become so obsessed with image that we live in a "hyperreality" where reality is intertwined with the images of branding and the media, and where irony and parody take the place of truth.
					</p>
					<h3 className="ui dividing header">Antifa</h3>
					<p>The motivation for Antifa is a direct question: what if political activism were a permanent lifestyle fixation that became a shell without a radical center? Many activists commonly focus on the "commoditization" of radical politics, but what if political action were itself an attempt to portray an image of radicalization without a true desire to engage social issues?
					</p>
					<p>Antifa takes place as a series of public works that mimic brand imagery to create a modern narrative. As is the case with most of my art, the narrative lives mostly in the false constructions of the viewer, who, forced with the assumption that 'Antifa' is a brand, creates magical explanations for its existence. Crucially, this brand may not be a traditional economic brand, but may also be a brand of politics, art, or lifestyle. It is important to recognize that brands can live anywhere, including the digital world. Since our society is now aware of that fact, an artist has the opportunity to pull the rug from underneath. The viewer may always rightly assume that the "true meaning" of this art lives elsewhere, never allowing the art to function as an end in itself. This is the essential paradox of media in the digital age.
					</p>
					<p>Antifa poises itself as an organization against all things: fame, fashion, fakeness, fascism. It conflates the horrors of nazi torture with the banality of social opinion. It uses a silly linguistic scheme that calls into questions its allegiance to anything at all. Was this an idea brashly conceived in a boardroom of bored marketing professionals? Was it a youthful creative group? Or is it the work of a violent underground radical organization intent on destroying civilization from the ground up?
					</p>
					<div className="ui divider" style={{"clear":"both"}}></div>
					<img className="ui bordered centered image" src="images/antifa/history.jpg"></img>
				</div>
		},
		{
			title: "Crew",
			cover: "images/crew/intro.jpg",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of public artworks investigating the impact of advertising and lifestyle media on urban society.",
			full:
				<div>
					<div className="ui two column grid">
						<div className="ui column">
							<img className="ui bordered fluid image" src="images/crew/gas.jpg"></img>
						</div>
						<div className="ui column">
							<img className="ui bordered fluid image" src="images/crew/match.jpg"></img>
						</div>
					</div>
					<h3 className="ui dividing header">Background</h3>
					<p>Many of my artworks speak to an idea that French philosopher Jean Baudrillard terms "the simulation", the notion that our society has become so obsessed with image that we live in a "hyperreality" where reality is intertwined with the images of branding and the media, and where irony and parody take the place of truth.
					</p>
					<h3 className="ui dividing header">Crew</h3>
					<p>Are brands powerful enough to inspire evil, malice, and immoral behavior? Such an idea would not contradict the purpose of branding - if it sells the product then it is worth it. Consumers rarely engage with this question simply because our most personal desires are so well exploited by these brands that we see advertisements as natural extensions of our own feelings.
					</p>
					<p>Crew is a series of imaginary ads that speak to the idea of wrongdoing as a genuine brand identity. It takes the idea of selling a lifestyle as far as possible, engaging with the viewer's sense of ethics. It presents arson as a beautiful, daring, mythical act. Seen out of context (as an advertisement), these images may be rationalized as innocuous in various ways. However, as the viewer notices more of them and develops a complete picture of the "meaning" of these ads, the true nature of its evil message dawns upon them. It rewards the discerning eye with more information and a more complete story, but never fully encloses the viewer with meaning.
					</p>
					<p>Instead of using moralism to chide consumers, I try to engage with our beliefs in their entirety. In this way I hope to experiment with the boundaries of our subconscious beliefs until we become aware of them.
					</p>
				</div>
		},
		{
			title: "E",
			cover: "images/e/intro.jpg",
			tags: [tags.artistic],
			date: new Date(2012, 5),
			blurb: "Part of a series of public artworks investigating the impact of advertising and lifestyle media on urban society.",
			full:
				<div>
					<h3 className="ui dividing header">Background</h3>
					<p>Many of my artworks speak to an idea that French philosopher Jean Baudrillard terms "the simulation", the notion that our society has become so obsessed with image that we live in a "hyperreality" where reality is intertwined with the images of branding and the media, and where irony and parody take the place of truth.
					</p>
					<h3 className="ui dividing header">E</h3>
					<p>E is a series of informationless posters and mock advertisements. They are meant to question the overall purpose of lifestyle media, and push the boundary of what we deem 'permissible' as public advertising.
					</p>
					<p>The E poster is actually multiple posters in a series that represents the state of disintegration of the lollipop. The lollipop is textured specifically to resemble a close-up of a pressed pill or ambiguous pharmeceutical. Indeed the colors chosen were light, chalky, and immediately recognizable as the color of various promiment drugs such as Adderal. My purpose in creating and installing E posters was to presenting an alarming vision of the near-future of media, as well as to give a sense of "life" to 2D art by allowing the lollipop to disintegrate as the series progresses.
					</p>
					<div className="ui divider"></div>
					<img className="ui centered image" src="images/e/montage1.jpg"></img>
					<div className="ui divider"></div>
					<img className="ui centered image" src="images/e/montage2.jpg"></img>
					<div className="ui divider"></div>
					<img className="ui centered image" src="images/e/montage3.jpg"></img>
				</div>
		},
		{
			title: "Limelighter",
			cover: "images/limelighter/interface.jpg",
			tags: [tags.independent],
			date: new Date(2014, 3),
			blurb: "A browser extension that allows you to highlight the web like a textbook.",
			full:
				<div>
					<h3 className="ui dividing header">Description</h3>
					<img className="ui small left floated image" src="images/limelighter/limelighter.png"></img>
					<p>Limelighter is a broswer extension that allows anyone to 'highlight' the web like the page of a textbook. The limelighter buttom allows you to select passages of text and highlight them in different colors. These highlights persist in your limelighter history forever, allowing you to keep a persistent record of your favorite text blurbs and components of web pages. The product also has a social component that allows you to browse the most highlighted portions of web-pages, filtered by date and category.
					</p>
					<h3 className="ui dividing header">Interface</h3>
					<img className="ui large right floated image" src="images/limelighter/interface.jpg"></img>
					<p>Each webpage can be highlighted using a natural text selection interaction. These highlights may then be right-clicked to show sharing options. Any computer with Limelighter that is logged in to the same account will provide your highlights, creating a fluid end-to-end experience.
					</p>
					<p>Limelighter contains a dedicated interface that appears as a dropdown and contains your recent highlights as well as the most trending recent highlights from around the web. Limelighter also provides a website that users could log-in to in order to view their complete history and share their highlights on social media.
					</p>
					<p>As the sole technical member of the team, I was resposible for the entire end-to-end stack of technologies involved, from the webpage-parsing technique, to the persistence and caching strategies. This experience provided me the opportunity to grow as a team-member and a technical innovator.
					</p>
					<p>As a free product, Limelighter had the challenge of monitizing its product. Ultimately our goal was to sell the technology and brand to large companies who were vying for increased user retention. However, our product was also designed as a marketing tool that allowed website administrators to monitor the quantity of user engagement on their content as well as to better understand the interests of their readers.
					</p>
				</div>
		},
		{
			title: "Fourier Analysis of Gradient Density Rotational Fluid Flow",
			cover: "images/couette/intro.jpg",
			tags: [tags.academic],
			date: new Date(2012, 5),
			blurb: "Studying the time and frequency domain of rotational flow in both homogeneous and gradient density fluids, with applications to manufacturing and plantary atmospheric research.",
			full:
				<div>
					<h3 className="ui dividing header">Description</h3>
					<img className="ui large right floated image" src="images/couette/diagram.jpg"></img>
					<h5 className="ui header">You may find the published paper <a href="ext/CouetteTaylor.pdf" target="_blank">here</a></h5>
					<p>The Couette-Taylor apparatus is a well-studied system in fluid dynamics because it presents a mathematically elegant system of equations for the fluid inside, as well as a set of specific operational states where the descent into turbulence can be easily and repeatedly observed.
					</p>
					<p>This apparatus works by placing water in the gap between two independently rotating concentric cylinders. The cylinders are mathematically assumed to be infinitely long in order to minimize the impact of edge effects. Additionally, the system is assumed to be 'non-slipping', i.e. the velocity of water touching each cylinder is assumed to travel at the exact velocity of that cylinder. These assumptions have been experimentally validated.
					</p>
					<p>My research advisor, Harry Swinney, was an early innovator in the use of Couette-Taylor systems to prove certain notions about chaotic fluid flow. Specifically, he was able to prove that the flow within the apparatus becomes chaotic after a small number of bifurcations.
					</p>
					<p>My research, conducted in collaboration with Dr. Bruce Rodenborn, studied the impact of density gradients on the turbulence of fluid flow within the Couette-Taylor system. This research has applications to atmospheric rotation in, for example, Saturn's rings.
					</p>
					<p>In order to conduct this research, Dr. Rodenborn and I created a specialized Couette-Taylor system with two independently rotating cylinders placed inside a structured enclosure. The system was carefully fabricated from metal and the components rigorously tested for frequency variations. Any minor untrued component would create an irregular moment of inertia that would create force in the fluids, ruining the mathematical basis.
					</p>
					<h3 className="ui dividing header">Procedure</h3>
					<p>In order to understand the frequencies of motion within the Couette-Taylor system, we used a webcam to observe frequencies of motion then conducted a spatio-temporal Fourier Transform on that image data in order to produce a frequency-graph of the system.
					</p>
					<img className="ui centered image" src="images/couette/fourier.jpg"></img>
					<p>At low levels of rotation, the frequency of motion observed in the water closely reflects the rotation of the fluid. However, at higher rotational velocities, the fluid becomes harder to understand due to the several frequencies of motion involved. Additionally, the Nyquist folding observed further complicates the analysis. However, the most prominent frequencies of motion are still largely present.
					</p>
					<img className="ui centered image" src="images/couette/fourier2.jpg"></img>
					<h3 className="ui dividing header">Results</h3>
					<p>Due to the 'banding' vortices produced by the Couette-Taylor system, a gradient density fluid remains fairly stable for an extended time. Mixing of the fluid only happens at faster, more turbulent flows. Therefore, our research supports the empirical observations that banded fluid vortices persist in large-scale systems such as planetary atmospheres. Our research also presents a highly affordable experimental mechanism for research that may be employed at universities around the world.
					</p>
				</div>
		}#,
		# {
		# 	title: "Pareidolia",
		# 	cover: "images/pareidolia/intro.jpg",
		# 	tags: [tags.artistic],
		# 	date: new Date(2012, 5),
		# 	blurb: "Musical noise-art recordings that use analog feedback and unusual samples to create unique generative sounds.",
		# 	full: <div>This?</div>
		# }
	]
}

module.exports = data
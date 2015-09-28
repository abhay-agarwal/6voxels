import React from "react/addons"
import Router from "react-router"

let tags = {
	artistic: "a",
	professional: "p",
	academic: "b",
	independent: "i"
}

export default {
	"tags": tags,
	"posts": [
		{
			"title": "CITRIS Personal Robots",
			"tags": [tags.academic],
			"blurb": "Improving the expressiveness and functionality of humanoid robots through adaptive software mechanisms."
		},
		{
			"title": "Denizen",
			"tags": [tags.professional],
			"blurb": "A local media outlet that allows users to create geographically tagged stories and promote other stories in real-time, enabling anyone to stay tuned with the goings on of their city or neighborhood."
		},
		{
			"title": "You, Online",
			"tags": [tags.independent],
			"blurb": "A series of public talks on online identity and the future of urban environments."
		},
		{
			"title": "Aquaponic Garden",
			"tags": [tags.independent],
			"blurb": "My closed-loop garden that recirculates water through an aquarium fish-tank, providing an immensely reduced environmental footprint."
		},
		{
			"title": "Mesosphere Product Prototype",
			"tags": [tags.professional],
			"blurb": "Product prototype of autonomous distributed infrastructure."
		},
		{
			"title": "Scan, Join, Be Rewarded",
			"tags": [tags.artistic],
			"blurb": "A public art project meant to encourage playful confusion and uncertainty about the urban environment."
		},
		{
			"title": "Quadcopter Semi-rigid Low-cost Design",
			"tags": [tags.academic],
			"blurb": "Designing a cheap and durable quadrotor with adaptive software qualities that respond to imperfections such as vibration."
		},
		{
			"title": "Sony Car Interface Prototype",
			"tags": [tags.professional],
			"blurb": "Natural music interface for an experimental car interface device."
		},
		{
			"title": "Antifa",
			"tags": [tags.artistic],
			"blurb": "Part of a series of imaginary brands that comprise an experimental art concept that questions the impact of advertising and lifestyle media."
		},
		{
			"title": "Sony Home Theater Prototype",
			"tags": [tags.professional],
			"blurb": "Connected home-theater prototype that allowed a person to interact seamlessly between their television, soundsystem, phone, and internet."
		},
		{
			"title": "Crew",
			"tags": [tags.artistic],
			"blurb": "Part of a series of imaginary brands that comprise an experimental art concept that questions the impact of advertising and lifestyle media."
		},
		{
			"title": "E",
			"tags": [tags.artistic],
			"blurb": "Part of a series of imaginary brands that comprise an experimental art concept that questions the impact of advertising and lifestyle media."
		},
		{
			"title": "6 Voxels of Separation",
			"tags": [tags.professional],
			"blurb": "My freelance projects live under this moniker."
		},
		{
			"title": "Pareidolia",
			"tags": [tags.artistic],
			"blurb": "Musical noise-art recordings that use analog feedback and unusual samples to create unique generative sounds."
		},
		{
			"title": "Fourier Analysis of Rotational Fluid Flow",
			"tags": [tags.academic],
			"blurb": "Studying the time and frequency domain of rotational flow in both homogeneous and gradient density fluids, with applications to manufacturing and plantary atmospheric research."
		}
	]
}
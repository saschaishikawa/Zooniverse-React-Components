React = require 'react'

ModalWindow = React.createClass

	getInitialState: ->
		shown: @props.show || false

	render: ->
		<div className="modal">
			<h1> {@props.title} </h1>
			{@props.children}
		</div>


module.exports = ModalWindow

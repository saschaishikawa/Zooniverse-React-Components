React = require 'react'

ModalWindow = React.createClass

	getInitialState: ->
		shown: @props.show || false

	render: ->
		<div className="modal">
			<h1> This is a modal </h1>
			{@props.children}
		</div>


module.exports = ModalWindow

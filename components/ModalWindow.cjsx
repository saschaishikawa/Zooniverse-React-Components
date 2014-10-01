React = require 'react'

ModalWindow = React.createClass

	getInitialState: ->
		shown: @props.show || false 

	render: ->
		<div>
			<h1> MODAL</h1>
		</div>


module.exports = ModalWindow

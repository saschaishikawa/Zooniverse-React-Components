React = require 'react'
SignIn = require './SignIn'
ModalWindow = React.createClass
	
	getInitialState: ->
		shown: @props.show 

	render: ->
		<div>
			<SignIn />
		</div>


module.exports = ModalWindow
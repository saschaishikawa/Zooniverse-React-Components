React = require 'react'
SignUp = React.createClass

	submit: ->


	render: ->
		<form>
			<input type="text" />
			<input type="password" />
			<input type="submit" value="submit" onSubmit={@submit} />	
		</form>
			
module.exports = SignUp
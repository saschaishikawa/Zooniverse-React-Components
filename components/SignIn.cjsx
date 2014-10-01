React = require 'react'
SignIn = React.createClass

	submit: ->


	render: ->
		<form>
			<h2>Please Sign In </h2>
			<input type="text" />
			<input type="password" />
			<input type="submit" value="submit" onSubmit={@submit} />
		</form>

module.exports = SignIn

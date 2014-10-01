React  = require 'react'
MenuDropDown = require './MenuDropDown'

TopBar = React.createClass
  displayName : "TopBar"

  languageChanged:(data)->
    @props.languageChanged(data)

  triggerSignUp :->
    alert("signUp")

  triggerSignIn :->
    alert("signIn")

  render: ->
    <div>
      <a onClick={@triggerSignUp}> Sign up</a>
      <a onClick={@triggerSignIn}> Sign in</a>
      <MenuDropDown onDropDownChange={@languageChanged} options={@props.languageOptions} />
    </div>


TopBarRapper = React.createClass
  displayName : "TopBarRapper"
  render: ->
    <TopBar languageOptions={@props.query.languageProps} />





module.exports = TopBarRapper

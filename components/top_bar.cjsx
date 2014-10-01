React  = require 'react'
MenuDropDown = require './MenuDropDown'

User  =
  email: "stuart@stu.com"
  name : "Stuart Lynn"


TopBar = React.createClass
  displayName : "TopBar"

  languageChanged:(data)->
    alert('lan change')

  triggerSignUp: ->
    alert("signUp")

  triggerSignIn: ->
    alert("signIn")

  triggerSignOut: ->
    alert("signOut")

  componentDidMount: ->
    console.log @props

  render: ->
    <div>
      {if @props.user
        <div>
          <span>{@props.user.name}</span>
          <a onClick={@triggerSignOut}>Sign out</a>
        </div>
      else
        <div>
          <a onClick={@triggerSignUp}> Sign up</a>
          <a onClick={@triggerSignIn}> Sign in</a>
        </div>
      }
      <MenuDropDown show={true} onDropDownChange={@languageChanged} options={["one", "two", "three"]} />
    </div>


TopBarRapper = React.createClass
  displayName : "TopBarRapper"
  render: ->
    <TopBar languageOptions={@props.query.languageProps} user={User} />







module.exports = TopBarRapper

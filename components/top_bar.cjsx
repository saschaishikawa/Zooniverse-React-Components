React  = require 'react'
MenuDropDown = require './MenuDropDown'
ModalWindow = require './ModalWindow'
SignIn      = require './SignIn'
SignUp      = require './SignUp'

User  =
  email: "stuart@stu.com"
  name : "Stuart Lynn"


TopBar = React.createClass
  displayName : "TopBar"

  languageChanged:(data)->
    alert('lan change')

  triggerSignUp: ->
    @props.onTriggerSignUp()

  triggerSignIn: ->
    @props.onTriggerSignIn()

  triggerSignOut: ->
    alert("signOut")

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

  getInitialState: ->
    showSignInModal: false
    showSignUpModal: false

  triggerSignInModal: ->
    @setState
      showSignInModal : true

  render: ->
    <div>
      <TopBar languageOptions={@props.query.languageProps} user={null} onTriggerSignIn={@triggerSignInModal} />
      <ModalWindow show={@state.showSignInModal}>
        <SignIn />
      </ModalWindow>

      <ModalWindow show={@state.showSignUpModal}>
        <SignUp />
      </ModalWindow>
    </div>

module.exports = TopBarRapper

React  = require 'react'
MenuDropDown = require './MenuDropDown'
ModalWindow = require './ModalWindow'
SignIn      = require './SignIn'
SignUp      = require './SignUp'
ZooniverseLogo = require './zooniverse_logo'
LanguageLogo = require './language_logo'

User =
  email: "stuart@stu.com"
  name : "Stuart Lynn"


TopBar = React.createClass
  displayName : "TopBar"

  languageChanged:(data)->
    console.log "lang change"

  triggerSignUp: ->
    @props.onTriggerSignUp()

  triggerSignIn: ->
    @props.onTriggerSignIn()

  triggerSignOut: ->
    console.log "signOut"

  render: ->
    <div className="topbar">
      <ZooniverseLogo />
      <span> A Zooniverse project </span>
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
      <MenuDropDown show={false} onDropDownChange={@languageChanged} options={["one", "two", "three"]} >
        <LanguageLogo />
      </MenuDropDown>
    </div>


TopBarRapper = React.createClass
  displayName : "TopBarRapper"

  getInitialState: ->
    showSignInModal: false
    showSignUpModal: false

  toggleSignIn: ->

    @setState
      showSignInModal : !@state.showSignInModal
      showSignUpModal : false

  toggleSignUp: ->
    @setState
      showSignUpModal : !@state.showSignUpModal
      showSignInModal : false

  render: ->
    <div>
      <TopBar languageOptions={@props.query.languageProps} user={null} onTriggerSignIn={@toggleSignIn} onTriggerSignUp={@toggleSignUp} />
        <ModalWindow onClose={@toggleSignIn} show={@state.showSignInModal}>
          <SignIn />
        </ModalWindow>

        <ModalWindow onClose={@toggleSignUp} show={@state.showSignUpModal}>
          <SignUp />
        </ModalWindow>
    </div>

module.exports = TopBarRapper

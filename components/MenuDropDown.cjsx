React = require('react')
MenuDropDown = React.createClass

  getInitialState:->
    {shown : @props.show || false}

  toggle:->
    state = @state
    state.shown = !state.shown
    @setState state

  render: ->
    <div>
      <h1 onClick={@toggle}>I am a totally awesome drop down</h1>

      {if @state.shown
        <ul>
          <li>"content is here"</li>
        </ul>
      }
    </div>


module.exports = MenuDropDown

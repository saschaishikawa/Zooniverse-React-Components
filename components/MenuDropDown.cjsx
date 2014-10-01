React = require('react')
MenuDropDown = React.createClass

  getInitialState:->
    shown    : @props.show || false
    selected : null
    options  : @props.options || []

  toggle:->
    @setState
      shown : !@state.shown

  triggerSelection:(selection)->
    console.log selection.target.innerHTML
    @setState
      selected :selection.target.innerHTML

  optionElements :(opt)->
    if opt==@state.selected
      classes = 'selected'
    else
      classes= ''
    <li className= "menu_item #{classes}" onClick=@triggerSelection><a>{opt}</a></li>

  render: ->
    console.log @state
    <div>
      <h1 onClick={@toggle}>I am a totally awesome drop down</h1>

      {if @state.shown
        <ul>
          {@props.options.map @optionElements}
        </ul>
      }
    </div>


module.exports = MenuDropDown

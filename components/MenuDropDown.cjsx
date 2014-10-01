React = require('react')
MenuDropDown = React.createClass

  getInitialState:->
    shown    : @props.show || false
    selected : null
    options  : @props.options || []

  toggle:->
    @setState
      shown : !@state.shown

  triggerSelection:(selectedElement)->
    selection = selectedElement.target.innerHTML
    @setState
      selected : selection
      shown    : false
    @props.onDropDownChange selection

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

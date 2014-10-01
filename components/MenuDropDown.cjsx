React = require('react')
MenuDropDown = React.createClass

  getInitialState:->
    shown    : @props.show || false
    selected : null
    options  : @props.options || []

  toggle:->
    @setState
      shown : !@state.shown

  triggerSelection:(event)->
    event.preventDefault()
    selection = event.target.innerHTML
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
    <div className='menu_drop_down'>
      <div class='header' onClick={@toggle}>
        {@props.children}
      </div>
      {if @state.shown
        <ul>
          {@props.options.map @optionElements}
        </ul>
      }
    </div>


module.exports = MenuDropDown

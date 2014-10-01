React = require "react"

module.exports = React.createClass
  getDefaultProps:->
    width : 100
    height: 100
  render:->
    <svg xmlns="http://www.w3.org/2000/svg" viewBox={"0 0 #{@props.width} #{@props.height}"} class="zooniverse-logo" width="1em" height="1em">
      <g class="zooniverse-logo" fill="white" stroke="transparent" strokeWidth="0" transform="translate(50, 50)">
        <path d="M 0 -45 A 45 45 0 0 1 0 45 A 45 45 0 0 1 0 -45 Z M 0 -30 A 30 30 0 0 0 0 30 A 30 30 0 0 0 0 -30 Z"></path>
        <path d="M 0 -12.5 A 12.5 12.5 0 0 1 0 12.5 A 12.5 12.5 0 0 1 0 -12.5 Z"></path>
        <path d="M 0 -75 L 5 0 L 0 75 L -5 0 Z" transform="rotate(50)"></path>
      </g>
    </svg>

React = require "react"

module.exports = React.createClass
  render:->
    <svg viewBox="0 0 100 100" class="zooniverse-language-icon" width="1.25em" height="1.25em" >
      <g transform="translate(50, 50)" fill="transparent" stroke="white" strokeWidth="8px">
        <path d="M -43 0 H 43 M 0 -43 V 43"></path>
        <path d="M 0 -45 Q -45 0 0 45 M 0 -45 Q 45 0 0 45"></path>
        <path d="M -40 -25 Q 0 -15 40 -25 M -40 25 Q 0 15 40 25"></path>
        <circle r="45"></circle>
      </g>
    </svg>

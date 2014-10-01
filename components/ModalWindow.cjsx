React = require 'react'

ModalWindow = React.createClass

	getDefaultProps : ->
		show: false
	
	closeModal: ->


	render: ->
		<div className="modalContainer">
			{if @props.show
				<div className="modal">
					<a className="modalClose" onClick={@closeModal}>x</a>
					<br />
					<br />
					<div className='modalContent'>
						{@props.children }
					</div>
				</div>
			}
		</div>

module.exports = ModalWindow

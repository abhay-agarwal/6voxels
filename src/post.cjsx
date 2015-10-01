React = require("react/addons")
Router = require("react-router")
Data = require('./data')
{Link} = Router

class Post extends React.Component
  constructor: (@props) ->
    super @props
    @state = {hovered: false, loading: true, modal: false}
    @key = Data.hash(@props.content.title)

  loaded: () ->
    @setState({loading: false})
    $(".stack").isotope()

  modal: () ->
    @setState({modal: true})
    $("#"+@key).modal('show')

  render: () ->
    classes = [
      'hovered' if this.state.hovered
      'loading' if this.state.loading
      'ui segment'
    ].join(' ')
    <div className="#{Data.isotope.class} column" key={@key}>
      <div className={classes}
           onMouseOver={=> @setState({hovered: true})}
           onMouseOut={=> @setState({hovered: false})}
           onClick={=> @modal()}>
        <img className="ui fluid image"
             src="#{Data.images}#{@props.content.folder}/intro.jpg"
             onLoad={=> @loaded()}/>
        <div className="ui message" style={{"marginTop": "1rem"}}>
          <div className="header">{@props.content.title}</div>
          <p>{@props.content.blurb}</p>
        </div>
      </div>
      <div id={@key} className="long ui modal">
        <h1 className="ui header">
          {@props.content.title}
          <div className="sub header">
            {@props.content.blurb}
          </div>
        </h1>
        <div className="content">
          {@props.content.full if this.state.modal}
        </div>
      </div>
    </div>

module.exports = Post
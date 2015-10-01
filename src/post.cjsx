React = require("react/addons")
Router = require("react-router")
Data = require('./data')
{Link} = Router

class Post extends React.Component
  constructor: (@props) ->
    super @props
    @state = {hovered: false, loading: true}
    @key = Data.hash(@props.content.title)

  loaded: () ->
    @setState({loading: false})
    $(".stack").isotope()

  modal: () ->
    $("#"+@key).modal('show')

  render: () ->
    classes = [
      'hovered' if this.state.hovered
      'loading' if this.state.loading
      'ui post segment'
    ].join(' ')
    <div className="#{Data.isotope.class} #{@props.content.tags.join(' ')} column">
      <a href="#" onClick={=> @modal()}>
        <div className={classes}
             onMouseOver={=> @setState({hovered: true})}
             onMouseOut={=> @setState({hovered: false})}
             >
          <img className="ui fluid image"
               src="#{Data.images}#{@props.content.folder}/intro.jpg"
               onLoad={=> @loaded()}/>
          <div className="ui description container" style={{"marginTop": "1rem"}}>
            <div className="ui dividing header">{@props.content.title}</div>
            <div className="ui blurb">{@props.content.blurb}</div>
          </div>
        </div>
      </a>
      <div id={@key} className="long ui modal">
        <h1 className="ui header">
          {@props.content.title}
          <div className="sub header">
            {@props.content.blurb}
          </div>
        </h1>
        <div className="content">
          {@props.content.full}
        </div>
      </div>
    </div>

module.exports = Post
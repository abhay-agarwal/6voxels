React = require("react/addons")
Router = require("react-router")
Data = require('./data')
{Link} = Router

class Tag extends React.Component
  render: () ->
    classes = [
        "green" if @props.active == ('.'+@props.name)
        "ui tag label"
      ].join(' ')
    <a className={classes} onClick={this.props.onClick}>
     {@props.name}
    </a>

class Menu extends React.Component
  constructor: () ->
    this.state = {filter: "*", value: ""}

  clicked: (value) ->
    f= "."+value
    statement = if f == this.state.filter then "*" else f
    @setState({filter: statement, value: ""})
    $(".stack").isotope({filter: statement})

  typed: (e) ->
    value = e.target.value
    @setState({filter: "*", value: value})
    $(".stack").isotope({filter: ->
      return "*" if not value
      $(this).text().toLowerCase().includes(value.toLowerCase())
    })

  render: () ->
    <div className="ui text menu">
      <div className="filtering ui container">
        <div className="header item">Filter:</div>
        {<Tag name={value} key={value}
              onClick={@clicked.bind(this,value)}
              active={this.state.filter}>
        </Tag> for key,value of Data.tags}
      </div>
      <div className="right menu">
        <div className="item">
          <div className="ui transparent icon input">
            <input type="text"
                   placeholder="Search..."
                   value={this.state.value}
                   onChange={@typed.bind(this)}/>
            <i className="search link icon"></i>
          </div>
        </div>
      </div>
    </div>

module.exports = Menu
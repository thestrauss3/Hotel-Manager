var HelloMessage = React.createClass({
  render: function() {
    return (
      <h1>Hello {this.props.name}!</h1>
    )
  }
});

const TestComponent = props => {
  return (
      <div>constant{props.name}</div>
  )
}

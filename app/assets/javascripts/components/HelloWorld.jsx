var HelloMessage = React.createClass({
  getCurrentBookings: function() {
    debugger;
  },
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

const Schedule = props => {
  for (i = 0; i < window.innerWidth; i += 100) {

  }
  var bookings = props.bookings.map((booking, index) => {
    return(
      <div></div>
    )
  })
  return (
    <div>

      {bookings}
    </div>
  )
}

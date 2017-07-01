class Room extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    var roomBookings = this.props.bookings.filter((booking, index) => {
      return booking.room_id === this.props.roomInfo.id
    })
    //
    // var bookingsDisplay = roomBookings.map((booking, index) => {
    //   var checkin = new Date(roomBookings[0].scheduled_checkin)
    //   var checkout = new Date(roomBookings[0].scheduled_checkout)
    //   debugger;
    //   var booking = [];
    //   var row = this.props.listOfDays.map((day, index) => {
    //     return(<td key={index}> </td>)
    //   })
    //   return (
    //     <div></div>
    //   )
    // })
    //
    var row;
    // var row = this.props.listOfDays.map((day, index) => {
    //   return(<td key={index}> </td>)
    // })


    row = this.props.listOfDays.map((day, index) => {
      var thing = checkIfDayFallsWithinAnyBooking(day, roomBookings);
      if (thing.length == 0) {
        return(<td key={ index }></td>)
      } else if (thing.length == 1) {
        return(<td key={ index }>{ thing[0] }</td>)
      } else {
        console.error(`More than customer booking for room ${this.props.roomInfo.room_number} on ${day}`)
      }
    })

    return (
      <tr><td>{ this.props.roomInfo.room_number }</td>{row}</tr>
    )
  }
}

function checkIfDayFallsWithinAnyBooking(day, listOfBookings) {
  // var thing2 = listOfBookings.map(booking => {
  //   var thing1 = checkIfDayFallsWithinBooking(day, booking);
  //   debugger;
  //   return thing1;
  // })
  // debugger
  // return thing2;
  var tile = listOfBookings.map((booking, index) => {
    if (checkIfDayFallsWithinBooking(day, booking)) {
      return booking.id
    }
  })
  return tile;
}

function checkIfDayFallsWithinBooking(day, booking) {
  var checkin = new Date(booking.scheduled_checkin);
  var checkout = new Date(booking.scheduled_checkout);
  return (checkin < day && day < checkout)
}

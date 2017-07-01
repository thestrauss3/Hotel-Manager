const Schedule = props => {
  MONTHS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  var focus = new Date;

  for (i = 0; i < window.innerWidth / 100; i += 1) {
    var month = MONTHS[focus.getMonth()];
    var day = focus.getDate()
    debugger
  }
  var bookings = props.bookings.map((booking, index) => {
    return(
      <div></div>
    )
  })
  return (
    <div>
      <table>
        <tr>

        </tr>
      </table>

      {bookings}
    </div>
  )
}

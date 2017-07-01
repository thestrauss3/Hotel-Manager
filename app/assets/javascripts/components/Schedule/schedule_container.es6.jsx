class ScheduleContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      focus: new Date
    };
  }

  componentDidMount() {

  }

  render () {
    var today = new Date;
    var numberOfColumns = Math.floor(window.innerWidth / 100);

    var listOfDays = [];
    for(var i = 0; i < numberOfColumns; i++) {
      var day = addDays(this.state.focus, i-1)
      listOfDays.push(day)
    }

    var listOfRooms = this.props.rooms.map((room, index) => {
      return (
        <Room
          key={index}
          focus = { this.state.focus }
          roomInfo = { room }
          bookings = { this.props.bookings }
          listOfDays = { listOfDays }
        />
      )
    })


    return (
      <table>
        <thead>
          <TableHeader
            focus = { this.state.focus }
            listOfDays = { listOfDays }
          />
        </thead>
        <tbody>
          { listOfRooms }
        </tbody>
    </table>
    );
  }
}

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
    var number_of_columns = Math.floor(window.innerWidth / 100);
    var rooms = this.props.rooms.map((room, index) => {
      return (
        <Room key={index} />
      )
    })

    return (
      <table>
        <thead>
          <TableHeader
            number_of_columns = {number_of_columns}
            focus = {this.state.focus}
          />
        </thead>
    </table>
    );
  }
}

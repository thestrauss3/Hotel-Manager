class TableHeader extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    var row = this.props.listOfDays.map((day, index) => {
      var title = getNamedMonth(day) + " " + day.getDate()
      return(
        <th key={ index }>{ title }</th>
      )
    })
    return (
      <tr><th>Room</th>{ row }</tr>
    )
  }
}

TableHeader.propTypes = {
  numberOfColumns: React.PropTypes.number.isRequired,
  focus: React.PropTypes.instanceOf(Date)
};
TableHeader.defaultProps = {
  numberOfColumns: 3,
  focus: new Date()
};

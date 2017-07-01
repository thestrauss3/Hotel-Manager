class TableHeader extends React.Component {
  constructor(props) {
    super(props);
  }

  render () {
    var row = [];
    for(var i = 0; i < this.props.number_of_columns; i++) {
      var day = addDays(this.props.focus, i-1)
      var title = getNamedMonth(day) + " " + day.getDate()
      row.push(<th>{title}</th>)
    }
    return (
      <tr>{row}</tr>
    )
  }
}

TableHeader.propTypes = {
  number_of_columns: React.PropTypes.number.isRequired,
  focus: React.PropTypes.instanceOf(Date)
};
TableHeader.defaultProps = {
  number_of_columns: 3,
  focus: new Date()
};

const MONTHS_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug',
 'Sep', 'Oct', 'Nov', 'Dec'
];
const MONTHS_FULL = ["January", "February", "March", "April", "May", "June",
 "July", "August", "September", "October", "November", "December"
];

function addDays(date, days) {
    var result = new Date(date);
    result.setDate(result.getDate() + days);
    return result;
}

function getNamedMonth(date, options) {
  var options = options || {};
  var full_month = options.full || false;
  var month = date.getMonth();
  return full_month ? MONTHS_FULL[month] : MONTHS_SHORT[month];
}

String formatDate(DateTime dateTime) {
  if (dateTime == null) {
    dateTime = new DateTime.now();
  }

  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  return "${dateTime.day} ${months[dateTime.month - 1]} ${dateTime.year}";
}

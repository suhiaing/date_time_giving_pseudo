import 'package:intl/intl.dart';

void main() {}

class CreateNew {
  //date_section
  final List<Map<String, dynamic>> _dateData = [];

  final Map<String, dynamic> _individualdateData = {
    "date": "0 May",
    "done": true
  };

  void dateGiver() {
    for (int i = 0; i < 7; i++) {
      DateTime date = DateTime.now().add(Duration(days: i));
      DateFormat formatter = DateFormat('d MMM'); // Customize format here
      String formattedDate = formatter.format(date);

      _individualdateData.update("date", (value) => formattedDate);
      _individualdateData.update("done", (value) => false);

      _dateData.add(_individualdateData);
    }
  }

  //data_section
  CreateNew({required this.newHabbit});

  String newHabbit = '';

  List<Map> data = [];

  void dataGiving() {}
}

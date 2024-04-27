import 'dart:io';

import 'package:sketch/create_new_data.dart';

String newHabbit = "Hello";

void main() async {}

void writeDataToJSON(String newHabbit) async {
  CreateNewData newClass = CreateNewData(newHabbit);

  String jsonString = newClass.jsonData;
  try {
    final file = File('lib/file.json');
    final sink = file.openWrite(mode: FileMode.write);
    sink.write(jsonString);
    await sink.flush();
    print('JSON string written to file.json');
  } catch (e) {
    print(e);
  }
}

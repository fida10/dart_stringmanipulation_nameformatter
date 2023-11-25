/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/stringmanipulation_nameformatter_base.dart';

String formatName(String name) {
  List<String> split = name.trim().split(' ');
  late int indexOfLastName;
  if (split.length > 2) {
    indexOfLastName = split.length - 1;
  } else {
    indexOfLastName = 1;
  }

  late String lastName;
  try {
    lastName = split[indexOfLastName];
  } on RangeError catch(e) {
    print("Error thrown: $e");
    lastName = '';
  }

  return "First Name: ${split[0]}\nLast Name: $lastName";
}

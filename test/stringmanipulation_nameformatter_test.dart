import 'package:stringmanipulation_nameformatter/stringmanipulation_nameformatter.dart';
import 'package:test/test.dart';

void main() {
  group('Name Formatting Tests', () {
    test('Standard full name', () {
      expect(
          formatName('Jane Doe'), equals('First Name: Jane\nLast Name: Doe'));
    });

    test('Full name with middle name', () {
      expect(formatName('John Michael Doe'),
          equals('First Name: John\nLast Name: Doe'));
    });

    test('Single name', () {
      expect(formatName('Madonna'), equals('First Name: Madonna\nLast Name: '));
    });

    test('Name with extra spaces', () {
      expect(formatName('  John   Doe  '),
          equals('First Name: John\nLast Name: Doe'));
    });

    test('Empty name', () {
      expect(formatName(''), equals('First Name: \nLast Name: '));
    });

    test('Name with only spaces', () {
      expect(formatName('   '), equals('First Name: \nLast Name: '));
    });

    // Add more tests as needed based on your function's behavior and edge cases
  });
}

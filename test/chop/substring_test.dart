import "package:test/test.dart";
import 'package:quartet/src/chop/substring.dart';

void main() {
  test('substring() should substract a string', () {
    expect(substring('Dart'), 'Dart');
    expect(substring('Dart', 2), 'rt');
    expect(substring('Dart', 2, 3), 'r');
    expect(substring('Dart', 2, 100), 'rt');
  });

  test('substring() should return an empty string for null.', () {
    expect(substring(null, 20), '');
    expect(substring(null), '');
  });
}

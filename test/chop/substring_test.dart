import "package:test/test.dart";
import 'package:quartet/src/chop/substring.dart';

void main() {
  test('substr() should substract a string', () {
    expect(substr('Dart'), 'Dart');
    expect(substr('Dart', 2), 'rt');
    expect(substr('Dart', 2, 3), 'r');
    expect(substr('Dart', 2, 100), 'rt');
  });

  test('substr() should return an empty string for null.', () {
    expect(substr(null, 20), '');
    expect(substr(null), '');
  });
}

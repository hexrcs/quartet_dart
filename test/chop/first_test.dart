import "package:test/test.dart";
import 'package:quartet/src/chop/first.dart';

void main() {
  test('first() should return the first part of a string before given index.',
      () {
    expect(first('Dart Lang', 0), '');
    expect(first('Dart Lang', 5), 'Dart ');
    expect(first(' Hi!', 1), ' ');
    expect(first(' Hi!', 0), '');
    expect(first(' Hi!', 4), ' Hi!');
    expect(first(' Hi!', 10), ' Hi!');
  });

  test('first() should return the first character of a string when index is not specified.',
      () {
    expect(first('Dart Lang'), 'D');
    expect(first(' Hi!'), ' ');
    expect(first(''), '');
  });

  test('first() should return an empty string if the given index is negative.',
      () {
    expect(first('Dart Lang', -7), '');
    expect(first('Dart Lang', -1), '');
  });

  test('first() should return an empty string if null is passed in.', () {
    expect(first(null, 4), '');
    expect(first(null, 3), '');
  });
}

import "package:test/test.dart";
import 'package:quartet_dart/src/chop/first.dart';

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

  test('first() should return an empty string if the given index is negative.',
      () {
    expect(first('Dart Lang', -7), '');
    expect(first('Dart Lang', -1), '');
  });
}

import "package:test/test.dart";
import 'package:quartet/src/chop/last.dart';

void main() {
  test('last() should return the last part of a string for given length.',
      () {
    expect(last('Dart Lang', 0), '');
    expect(last('Dart Lang', 5), ' Lang');
    expect(last(' Hi!', 1), '!');
    expect(last(' Hi!', 0), '');
    expect(last(' Hi!', 4), ' Hi!');
    expect(last(' Hi!', 10), ' Hi!');
  });

  test('last() should return the last character of a string when index is not specified.',
      () {
    expect(last('Dart Lang'), 'g');
    expect(last(' Hi!'), '!');
    expect(last(''), '');
  });

  test('last() should return an empty string if the given index is negative.',
      () {
    expect(last('Dart Lang', -7), '');
    expect(last('Dart Lang', -1), '');
  });

  test('last() should return an empty string if null is passed in.', () {
    expect(last(null, 4), '');
    expect(last(null, 3), '');
  });
}

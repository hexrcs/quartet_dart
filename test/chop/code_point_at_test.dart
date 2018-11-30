import "package:test/test.dart";
import 'package:quartet_dart/src/chop/code_point_at.dart';

void main() {
  test(
      'codePointAt() should return the code point of the character at given index.',
      () {
    expect(codePointAt('Dart', 0), 68);
    expect(codePointAt('Dart', 2), 114);
    expect(codePointAt(' Hi!', 1), 72);
    expect(codePointAt(' ', 0), 32);
  });

  test(
      'codePointAt() should return the combined value, an astral code point, if the chosen character is composed of a surrogate pair.',
      () {
    expect(codePointAt('😀', 0), 128512);
    expect(codePointAt('🀵', 0), 127029);
    expect(codePointAt('𝐁', 0), 119809);
    expect(codePointAt('𝄞', 0), 119070);
  });

  test(
      'codePointAt() should return the code point of the character chosen from backwards if [position] is negative.',
      () {
    expect(codePointAt('Dart', -1), 116);
    expect(codePointAt('Dart', -4), 68);
    expect(codePointAt(' ', -1), 32);
  });

  test(
      'codePointAt() should return the an empty string if the given [position] is out of bound.',
      () {
    expect(codePointAt('Dart', 4), null);
    expect(codePointAt('Dart', -5), null);
    expect(codePointAt(' ', 1), null);
  });

  test('codePointAt() should return null if null is passed in.', () {
    expect(codePointAt(null, 4), null);
    expect(codePointAt(null, 3), null);
  });
}

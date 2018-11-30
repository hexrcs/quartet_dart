import "package:test/test.dart";
import 'package:quartet_dart/src/chop/char_at.dart';

void main() {
  test('charAt() should return the character by index.', () {
    expect(charAt('Dart', 0), 'D');
    expect(charAt('Dart', 2), 'r');
    expect(charAt(' Hi!', 1), 'H');
    expect(charAt(' ', 0), ' ');
  });

  test(
      'charAt() should return the character counting from backwards if [position] is negative.',
      () {
    expect(charAt('Dart', -1), 't');
    expect(charAt('Dart', -4), 'D');
    expect(charAt(' ', -1), ' ');
  });

  test(
      'charAt() should return the an empty string if the given [position] is out of bound.',
      () {
    expect(charAt('Dart', 4), '');
    expect(charAt('Dart', -5), '');
    expect(charAt(' ', 1), '');
  });
}

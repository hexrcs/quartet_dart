import "package:test/test.dart";
import 'package:quartet_dart/src/chop/runes_at.dart';

void main() {
  test(
      'runesAt() should behave like charAt() for strings consist of non-composed characters.',
      () {
    expect(runesAt('Dart', 0), 'D');
    expect(runesAt('Dart', 2), 'r');
    expect(runesAt(' Hi!', 1), 'H');
    expect(runesAt(' ', 0), ' ');
  });

  test(
      'runesAt() should count the character composed of a surrogate pair as a single character.',
      () {
    expect(runesAt('😀', 0), '😀');
    expect(runesAt('🀵', 0), '🀵');
    expect(runesAt('𝐁', 0), '𝐁');
    expect(runesAt('𝄞', 0), '𝄞');
    expect(runesAt('𝐁15', 1), '1');
    expect(runesAt('ab 𝄞', 3), '𝄞');
  });

  test('runesAt() should return an empty string if null is passed in.', () {
    expect(runesAt(null, 4), '');
    expect(runesAt(null, 3), '');
  });
}

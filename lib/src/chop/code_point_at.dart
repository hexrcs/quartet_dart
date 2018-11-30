import './runes_at.dart';

/// Get the Unicode code point value of the character at [position]. For a character
/// outside the Basic Multilingual Plane (plane 0) that is composed of a surrogate
/// pair, its combined value, an astral code point, will be returned.
///
/// If [position] is negative, `-1` refers to the last index, `-2` refers to the
/// second last index and so on. If [position] is out of bound or [subject] is
/// `null`, `null` will be returned.
///
/// Example:
/// ```dart
/// expect(codePointAt('Dart', 0), 68);
/// expect(codePointAt('Dart', -1), 116);
/// expect(codePointAt('Dart', 5), null);
/// ```
///
int codePointAt(String subject, int position) {
  String char = runesAt(subject, position);
  if (char.length == 0) {
    return null;
  }

  return char.runes.toList()[0];
}

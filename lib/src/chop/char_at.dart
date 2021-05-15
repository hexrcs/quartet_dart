/// Access a character from [subject] at specified [position].
///
/// If [position] is negative, `-1` refers to the last index, `-2` refers to the
/// second last index and so on. If [position] is out of bound or [subject] is
/// null, an empty string will be returned.
///
/// Example:
/// ```dart
/// expect(charAt('Dart', 0), 'D');
/// expect(charAt('Dart', -1), 't');
/// expect(charAt('Dart', 5), '');
/// ```
///
String charAt(String? subject, int position) {
  if (subject is! String ||
      subject.length <= position ||
      subject.length + position < 0) {
    return '';
  }

  int _realPosition = position < 0 ? subject.length + position : position;

  return subject[_realPosition];
}

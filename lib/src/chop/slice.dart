/// Extracts from [subject] a string from [start] position up to [end] position. The character at [end] position is not included.
///
/// Example:
/// ```dart
/// expect(slice('Dart', 2), 'rt');
/// expect(slice('Dart', -1), 't');
/// expect(slice('Dart is awesome', 1, -4), 'art is awe');
/// expect(slice('Dart is awesome', 1, 12), 'art is awe');
/// ```
///
String slice(String subject, [int start = 0, int end]) {
  if (subject is! String) {
    return '';
  }

  int _realEnd;
  int _realStart = start < 0 ? subject.length + start : start;
  if (end is! int) {
    _realEnd = subject.length;
  } else {
    _realEnd = end < 0 ? subject.length + end : end;
  }

  return subject.substring(_realStart, _realEnd);
}

/// Extracts from [subject] a string from [start] position a number of [length]
/// characters.
///
/// If [start] is negative, `-1` refers to the last index, `-2` refers to the
/// second last index and so on. If `start + length` is greater than length of
/// the [subject], then the complete substring starting from [start] will be
/// returned.
///
/// Example:
/// ```dart
/// expect(substr('Dart', 2), 'rt');
/// expect(substr('Dart', -1), 't');
/// expect(substr('Dart is awesome', 1, 10), 'art is awe');
/// expect(substr('infinite loop', -4, 3), 'loo');
/// ```
///
String substr(String? subject, [int start = 0, int? length]) {
  if (subject is! String) {
    return '';
  }

  int _realEnd;
  int _realStart = start < 0 ? subject.length + start : start;
  if (length is! int || length < 0 || _realStart + length >= subject.length) {
    _realEnd = subject.length;
  } else {
    _realEnd = _realStart + length;
  }

  return subject.substring(_realStart, _realEnd);
}

/// Extracts from [subject] a string from [start] position up to [end] position.
/// The character at [end] position is not included.
///
/// If [end] is greater than length of the [subject], then the complete substring
/// starting from [start] will be returned.
///
/// Example:
/// ```dart
/// expect(substring('Dart is awesome', 1, 11), 'art is awe');
/// ```
///
String substring(String subject, [int start = 0, int end]) {
  if (subject is! String) {
    return '';
  }

  if (end is! int) {
    return subject.substring(start);
  }

  int _realEnd = end > subject.length ? subject.length : end;

  return subject.substring(start, _realEnd);
}

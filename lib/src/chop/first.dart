/// Return the first part of [subject] before the specified [position].
///
/// If [position] is greater or equal to the length of [subject], the complete
/// string will be returned. If [position] is negative or null, an empty string
/// will be returned.
///
/// Example:
/// ```dart
/// expect(first('Dart', 1), 'D');
/// expect(first('Dart Lang', -7), '');
/// expect(first(' Hi!', 10), ' Hi!');
/// ```
///
String first(String subject, int position) {
  if (subject is! String || position < 1) {
    return '';
  }

  int _realPosition = position < subject.length ? position : subject.length;

  return subject.substring(0, _realPosition);
}

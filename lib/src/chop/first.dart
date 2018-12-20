/// Return the first part of [subject] before the specified [position]. If no
/// [position] is given, the first character will be returned.
///
/// If `position >= subject.length`, the complete string will be returned. If
/// [position] is negative or `null`, an empty string will be returned.
///
/// Example:
/// ```dart
/// expect(first('Dart', 1), 'D');
/// expect(first('Dart Lang', -7), '');
/// expect(first(' Hi!', 10), ' Hi!');
/// ```
///
String first(String subject, [int position = 1]) {
  if (subject is! String || position < 1) {
    return '';
  }

  int _realPosition = position < subject.length ? position : subject.length;

  return subject.substring(0, _realPosition);
}

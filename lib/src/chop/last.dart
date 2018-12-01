/// Return the last [length] characters from [subject]. If no [position] is given,
/// the last character will be returned.
///
/// If [length] is greater or equal to the length of [subject], the complete
/// string will be returned. If [subject] is null or [position] is negative, an
/// empty string will be returned.
///
/// Example:
/// ```dart
/// expect(last('Dart', 1), 't');
/// expect(last('Dart Lang', -7), '');
/// expect(last(' Hi!', 10), ' Hi!');
/// ```
///
String last(String subject, [int length = 1]) {
  if (subject is! String || length < 0) {
    return '';
  }

  int _startPosition = length > subject.length ? 0 : subject.length - length;

  return subject.substring(_startPosition, subject.length);
}

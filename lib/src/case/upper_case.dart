/// Converts the all characters of [subject] to upper case.
///
/// Example:
/// ```dart
/// lowerCase("dartLang") // will return "DARTLANG"
/// ```
///
String upperCase(String subject) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  return subject.toUpperCase();
}

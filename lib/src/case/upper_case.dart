/// Converts all characters of [subject] to upper case.
///
/// Example:
/// ```dart
/// upperCase("dartLang") // will return "DARTLANG"
/// ```
///
String upperCase(String subject) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  return subject.toUpperCase();
}

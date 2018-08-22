/// Converts the all characters of [subject] to lower case.
///
/// Example:
/// ```dart
/// lowerCase("dartLang") // will return "dartlang"
/// ```
///
String lowerCase(String subject) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  return subject.toLowerCase();
}

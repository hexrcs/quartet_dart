/// Converts the first character of [subject] to lower case.
///
/// Example:
/// ```dart
/// decapitalize("DartLang") // will return "dartLang"
/// ```
///
String decapitalize(String? subject) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  return subject[0].toLowerCase() + subject.substring(1);
}

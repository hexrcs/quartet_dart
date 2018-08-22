/// Converts the first character of [subject] to upper case.
///
/// If [lowerRest] is set to true, the rest of the string will be converted to lower case.
///
/// Example:
/// ```dart
/// capitalize("dartLang") // will return "DartLang"
/// capitalize("dartLang", true) // will return "Dartlang"
/// ```
///
String capitalize(String subject, [bool lowerRest = false]) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  if (lowerRest) {
    return subject[0].toUpperCase() + subject.substring(1).toLowerCase();
  } else {
    return subject[0].toUpperCase() + subject.substring(1);
  }
}

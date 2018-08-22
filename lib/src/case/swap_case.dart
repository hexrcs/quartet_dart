/// Converts all lower case characters of [subject] to upper case and all upper case characters to lower case.
///
/// Example:
/// ```dart
/// swapCase("dartLang") // will return "DARTlANG"
/// ```
///
String swapCase(String subject) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  List<String> subjectChars = subject.split('');

  return subjectChars.map((x) => _swap(x)).join();
}

String _swap(String char) {
  // so that characters that don't have the concept of cases will not be altered.
  String lowerCase = char.toLowerCase();
  String upperCase = char.toUpperCase();
  return char == lowerCase ? upperCase : lowerCase;
}

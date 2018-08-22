/// Splits the [subject] into a list of words.
///
/// Example:
/// ```dart
/// split("dartLang") // will return ["dart", "Lang"]
/// split("dart lang") // will return ["dart", "lang"]
/// ```
///
List<String> words(String subject, [Pattern customPattern]) {
  if (subject is! String || subject.length == 0) {
    return [''];
  }

  Pattern pattern; // TODO: implement regex patterns constants

  return null;
}

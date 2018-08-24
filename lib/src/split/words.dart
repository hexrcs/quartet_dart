import '../helper/regex/patterns.dart';

/// Splits the [subject] into a list of words.
///
/// Example:
/// ```dart
/// split("dartLang") // will return ["dart", "Lang"]
/// split("dart lang") // will return ["dart", "lang"]
/// ```
///
List<String> words(String subject, [Pattern customPattern = defaultPattern]) {
  if (subject is! String || subject.length == 0) {
    return [];
  }

  RegExp pattern;

  if (customPattern is String) {
    pattern = RegExp(customPattern);
  } else if (customPattern is RegExp) {
    pattern = customPattern;
  }

  return pattern.allMatches(subject).map((m) => m.group(0)).toList();
}

const String defaultPattern = WORD;

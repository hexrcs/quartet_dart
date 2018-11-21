import './lower_case.dart';
import './capitalize.dart';
import '../split/words.dart';
import '../helper/regex/patterns.dart';

/// Converts all characters of [subject] to title case. Optional [noSplitList] specifies a list of
/// characters which won't be seen as a word breaker.
///
/// Example:
/// ```dart
/// titleCase("dart lang") // will return "Dart Lang"
/// titleCase("jean-luc is good-looking", ["-"]) // will return "Jean-luc Is Good-looking"
/// ```
///
String titleCase(String subject, [List<String> noSplitList = const []]) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  RegExp _wordPattern = RegExp(WORD);

  return subject.replaceAllMapped(
      _wordPattern, (Match m) => capitalize(m[0], true));
}

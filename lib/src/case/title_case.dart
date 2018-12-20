import './lower_case.dart';
import './capitalize.dart';
import '../helper/regex/patterns.dart';

/// Converts all characters of [subject] to title case.
///
/// Optional [notSplitList] specifies a list of characters which will be excluded as word separators.
///
/// Example:
/// ```dart
/// titleCase("dart lang") // will return "Dart Lang"
/// titleCase("jean-luc is good-looking", ["-"]) // will return "Jean-luc Is Good-looking"
/// titleCase("jean-luc is good-looking") // will return "Jean-Luc Is Good-Looking"
/// ```
///
String titleCase(String subject, [List<String> notSplitList = const []]) {
  if (subject is! String || subject.length == 0) {
    return '';
  }

  RegExp _wordPattern = RegExp(WORD);

  int index = 0;

  String replacer(Match m) {
    String subString = m[0];
    index = subject.indexOf(subString, index);
    int previousIndex = index - 1;
    if (previousIndex >= 0 &&
        notSplitList.indexOf(subject[previousIndex]) >= 0) {
      index += subString.length;
      return lowerCase(subString);
    } else {
      index += subString.length;
      return capitalize(subString, true);
    }
  }

  return subject.replaceAllMapped(_wordPattern, replacer);
}

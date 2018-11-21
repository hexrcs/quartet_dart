import './lower_case.dart';
import './capitalize.dart';
import '../split/words.dart';

/// Converts all characters of [subject] to camel case.
///
/// Example:
/// ```dart
/// camelCase("dart lang") // will return "dartLang"
/// ```
///
String camelCase(String subject) {
  List<String> _splittedString = words(subject);

  if (_splittedString.length == 0) {
    return '';
  }

  String _firstWord = lowerCase(_splittedString[0]);
  List<String> _restWords = _splittedString
      .sublist(1)
      .map((String x) => capitalize(x, true))
      .toList();

  return _firstWord + _restWords.join('');
}

String _wordToCamel(int index, String word) {
  return index == 0 ? lowerCase(word) : capitalize(word, true);
}

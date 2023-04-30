import './lower_case.dart';
import '../split/words.dart';

/// Converts all characters of [subject] to snake case.
///
/// Example:
/// ```dart
/// snakeCase("dart Lang") // will return "dart_lang"
/// ```
///
String snakeCase(String? subject) {
  List<String?> _splittedString = words(subject);

  if (_splittedString.length == 0) {
    return '';
  }

  return _splittedString.map(lowerCase).toList().join('_');
}

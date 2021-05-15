import './lower_case.dart';
import '../split/words.dart';

/// Converts all characters of [subject] to kebab case, aka *spinal case* or *lisp case*.
///
/// Example:
/// ```dart
/// kebabCase("dart Lang") // will return "dart-lang"
/// ```
///
String kebabCase(String? subject) {
  List<String?>? _splittedString = words(subject);

  if ((_splittedString?.length ?? 0) == 0) {
    return '';
  }

  return _splittedString!.map(lowerCase).toList().join('-');
}

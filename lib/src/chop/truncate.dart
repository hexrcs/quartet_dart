import './substr.dart';

/// Truncates [subject] to a new [length]. Like `prune()`, but doesn't care if
/// a word is broken or not. Guarantees the truncated string to be no longer 
/// than [length], if the [suffix] is shorter than [length].
///
/// Default [suffix] is `'...'`.
///
/// Example:
/// ```dart
/// expect(truncate('Dart is awesome', 1, 11), 'art is awe');
/// ```
///
String truncate(String subject, int length, [String suffix = '...']) {
  if (subject is! String || length is! int || length < 0) {
    return '';
  }
  if (length >= subject.length) {
    return subject;
  }
  int _realLength = length < suffix.length ? 0 : length - suffix.length;

  return substr(subject, 0, _realLength) + suffix;
}

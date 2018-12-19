import '../split/words.dart';

/// Truncates [subject] to a new [length] and does not break the words.
/// Guarantees that the truncated string is no longer than [length].
///
/// Example:
/// ```dart
/// expect(prune('Once upon a time', 7), 'Once...');
/// expect(prune('Good day, Little Red Riding Hood', 16, ' (more)'), 'Good day (more)');
/// expect(prune('Once upon', 10), 'Once upon');
/// ```
///
String prune(String subject, int length, [String suffix = '...']) {
  if (subject is! String || length is! int || length < 0) {
    return '';
  }
  if (length >= subject.length) {
    return subject;
  }

  int truncatedLength = 0;
  List<String> _words = words(subject);
  int offset = 0;
  for (String word in _words) {
    offset = subject.indexOf(word, offset) + word.length;
    if (offset + suffix.length <= length) {
      truncatedLength = offset;
    }
  }

  return subject.substring(0, truncatedLength) + suffix;
}

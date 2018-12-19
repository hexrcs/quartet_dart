import "package:test/test.dart";
import 'package:quartet/src/chop/substr.dart';
import '../consts.dart';

void main() {
  test('substr() should substract a string', () {
    expect(substr('Dart'), 'Dart');
    expect(substr('Dart', 2), 'rt');
    expect(substr('Dart', 2, 100), 'rt');
    expect(substr('Dart', -1), 't');
    expect(substr('Dart is awesome', 1, 10), 'art is awe');
    expect(substr('infinite loop', -4, 3), 'loo');
    expect(substr(PRINTABLE_ASCII), PRINTABLE_ASCII);
  });

  test('substr() should return an empty string for null.', () {
    expect(substr(null, 20), '');
    expect(substr(null), '');
  });
}

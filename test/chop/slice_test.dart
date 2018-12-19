import "package:test/test.dart";
import 'package:quartet/src/chop/slice.dart';
import '../consts.dart';

void main() {
  test('slice() should slice a string.', () {
    expect(slice('Dart'), 'Dart');
    expect(slice('Dart', 2), 'rt');
    expect(slice('Dart', -1), 't');
    expect(slice('Dart is awesome', 1, -4), 'art is awe');
    expect(slice('Dart is awesome', 1, 11), 'art is awe');
    expect(slice('infinite loop', -4, -1), 'loo');
    expect(slice(PRINTABLE_ASCII), PRINTABLE_ASCII);
  });

  test('slice() should return an empty string for null.', () {
    expect(slice(null, 20), '');
    expect(slice(null), '');
  });
}

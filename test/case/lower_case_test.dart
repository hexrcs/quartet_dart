import "package:test/test.dart";
import 'package:quartet/src/case/lower_case.dart';

void main() {
  test(
      'lowerCase(String) turns all characters in a string to lower case.',
      () {
    expect(lowerCase('String QUARTET'), 'string quartet');
    expect(lowerCase('qUaRtEt'), 'quartet');
    expect(lowerCase('Quartet'), 'quartet');
    expect(lowerCase('capLock'), 'caplock');
    expect(lowerCase('q'), 'q');
    expect(lowerCase(''), '');
    expect(lowerCase('null'), 'null');
    expect(lowerCase(' '), ' ');
    expect(lowerCase('*Quartet'), '*quartet');
    expect(lowerCase('Квартет'), 'квартет');
    expect(lowerCase('квартет'), 'квартет');
    expect(lowerCase('КВАРТЕТ'), 'квартет');
  });

  test(
      'lowerCase(String) should return an empty string if null is passed in.',
      () {
    expect(lowerCase(null), '');
  });

  test('lowerCase() should have no effects on Chinese characters', () {
    expect(lowerCase('四重奏'), '四重奏');
    expect(lowerCase('四重奏 Quartet'), '四重奏 quartet');
    expect(lowerCase('QUARTET 四重奏'), 'quartet 四重奏');
  });
}

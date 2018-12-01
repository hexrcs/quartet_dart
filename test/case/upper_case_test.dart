import "package:test/test.dart";
import 'package:quartet/src/case/upper_case.dart';

void main() {
  test(
      'upperCase(String) turns all characters in a string to upper case.',
      () {
    expect(upperCase('String QUARTET'), 'STRING QUARTET');
    expect(upperCase('qUaRtEt'), 'QUARTET');
    expect(upperCase('Quartet'), 'QUARTET');
    expect(upperCase('capLock'), 'CAPLOCK');
    expect(upperCase('q'), 'Q');
    expect(upperCase(''), '');
    expect(upperCase('null'), 'NULL');
    expect(upperCase(' '), ' ');
    expect(upperCase('*Quartet'), '*QUARTET');
    expect(upperCase('Квартет'), 'КВАРТЕТ');
    expect(upperCase('квартет'), 'КВАРТЕТ');
    expect(upperCase('КВАРТЕТ'), 'КВАРТЕТ');
  });

  test(
      'upperCase(String) should return an empty string if null is passed in.',
      () {
    expect(upperCase(null), '');
  });

  test('upperCase() should have no effects on Chinese characters', () {
    expect(upperCase('四重奏'), '四重奏');
    expect(upperCase('四重奏 Quartet'), '四重奏 QUARTET');
    expect(upperCase('Quartet 四重奏'), 'QUARTET 四重奏');
  });
}

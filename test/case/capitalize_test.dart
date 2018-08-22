import "package:test/test.dart";
import 'package:quartet_dart/src/case/capitalize.dart';

void main() {
  test(
      'capitalize(String) only turns the first character in a string to upper case and leaves the rest as is.',
      () {
    expect(capitalize('quartet'), 'Quartet');
    expect(capitalize('qUaRtEt'), 'QUaRtEt');
    expect(capitalize('Quartet'), 'Quartet');
    expect(capitalize('capLock'), 'CapLock');
    expect(capitalize('q'), 'Q');
    expect(capitalize(''), '');
    expect(capitalize('null'), 'Null');
    expect(capitalize(' '), ' ');
    expect(capitalize(' quartet'), ' quartet');
    expect(capitalize('*quartet'), '*quartet');
    expect(capitalize('квартет'), 'Квартет');
    expect(capitalize('КВАРТЕТ'), 'КВАРТЕТ');
  });

  test(
      'capitalize(String, true) turns only the first character in a string to upper case and also the rest to lower case.',
      () {
    expect(capitalize('quartet', true), 'Quartet');
    expect(capitalize('qUaRtEt', true), 'Quartet');
    expect(capitalize('Quartet', true), 'Quartet');
    expect(capitalize('capLock', true), 'Caplock');
    expect(capitalize('q', true), 'Q');
    expect(capitalize('', true), '');
    expect(capitalize('null', true), 'Null');
    expect(capitalize(' ', true), ' ');
    expect(capitalize(' quartet', true), ' quartet');
    expect(capitalize('*quartet', true), '*quartet');
    expect(capitalize('квартет', true), 'Квартет');
    expect(capitalize('КВАРТЕТ', true), 'Квартет');
  });

  test(
      'Both capitalize(String) and capitalize(String, bool) should return an empty string if null is passed in.',
      () {
    expect(capitalize(null), '');
    expect(capitalize(null, true), '');
  });

  test('capitalize() should have no effects on Chinese characters', () {
    expect(capitalize('四重奏'), '四重奏');
    expect(capitalize('四重奏', true), '四重奏');
    expect(capitalize('四重奏 quartet'), '四重奏 quartet');
    expect(capitalize('四重奏 Quartet', true), '四重奏 quartet');
    expect(capitalize('四重奏 QUARTET', true), '四重奏 quartet');
    expect(capitalize('quartet 四重奏'), 'Quartet 四重奏');
    expect(capitalize('QUARTET 四重奏'), 'QUARTET 四重奏');
    expect(capitalize('QUARTET 四重奏', true), 'Quartet 四重奏');
  });
}

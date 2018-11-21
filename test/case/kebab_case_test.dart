import "package:test/test.dart";
import 'package:quartet_dart/src/case/kebab_case.dart';
import '../consts.dart';

void main() {
  test(
      'kebabCase(String) should strip off all special characters and return the kebab case of a string.',
      () {
    expect(kebabCase('quartet'), 'quartet');
    expect(kebabCase('QUaRtEt'), 'q-ua-rt-et');
    expect(kebabCase('Quartet'), 'quartet');
    expect(kebabCase('QUARTET'), 'quartet');
    expect(kebabCase('CapLock'), 'cap-lock');
    expect(kebabCase('String QUARTET'), 'string-quartet');
    expect(kebabCase('string quartet'), 'string-quartet');
    expect(kebabCase('String quartet'), 'string-quartet');
    expect(kebabCase('XMLHttpRequest'), 'xml-http-request');
    expect(kebabCase('Elevation of 8848m'), 'elevation-of-8848-m');
    expect(kebabCase('-string-quartet-'), 'string-quartet');
    expect(kebabCase('/path/to/quartet.dart'), 'path-to-quartet-dart');
    expect(kebabCase('__string__quartet__'), 'string-quartet');
    expect(kebabCase(PRINTABLE_ASCII),
        '0123456789-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz');
    expect(kebabCase('Q'), 'q');
    expect(kebabCase(''), '');
    expect(kebabCase('Null'), 'null');
    expect(kebabCase(' '), '');
    expect(kebabCase('***'), '');
    expect(kebabCase('\n\n\n\n   ***\t\t'), '');
    expect(kebabCase(' quartet'), 'quartet');
    expect(kebabCase('*quartet'), 'quartet');
    expect(kebabCase('Квартет'), 'квартет');
    expect(kebabCase('КВАРТЕТ'), 'квартет');
  });

  test('kebabCase(String) should return an empty string if null is passed in.',
      () {
    expect(kebabCase(null), '');
  });

  test('kebabCase() should have no effects on Chinese characters', () {
    expect(kebabCase('四重奏'), '四重奏');
    expect(kebabCase('四重奏 Quartet'), '四重奏-quartet');
    expect(kebabCase('四重奏Quartet'), '四重奏quartet');
    expect(kebabCase('Quartet 四重奏'), 'quartet-四重奏');
    expect(kebabCase('QUARTET 四重奏'), 'quartet-四重奏');
    expect(kebabCase('Quartet四重奏'), 'quartet四重奏');
  });
}

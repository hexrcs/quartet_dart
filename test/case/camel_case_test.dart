import "package:test/test.dart";
import 'package:quartet/src/case/camel_case.dart';
import '../consts.dart';

void main() {
  test(
      'camelCase(String) should return the camel case of a string, and strip off all special characters.',
      () {
    expect(camelCase('quartet'), 'quartet');
    expect(camelCase('QUaRtEt'), 'qUaRtEt');
    expect(camelCase('Quartet'), 'quartet');
    expect(camelCase('QUARTET'), 'quartet');
    expect(camelCase('CapLock'), 'capLock');
    expect(camelCase('String QUARTET'), 'stringQuartet');
    expect(camelCase('string quartet'), 'stringQuartet');
    expect(camelCase('String quartet'), 'stringQuartet');
    expect(camelCase('XMLHttpRequest'), 'xmlHttpRequest');
    expect(camelCase('Elevation of 8848m'), 'elevationOf8848M');
    expect(camelCase('-string-quartet-'), 'stringQuartet');
    expect(camelCase('/path/to/quartet.dart'), 'pathToQuartetDart');
    expect(camelCase('__string__quartet__'), 'stringQuartet');
    expect(camelCase(PRINTABLE_ASCII),
        '0123456789AbcdefghijklmnopqrstuvwxyzAbcdefghijklmnopqrstuvwxyz');
    expect(camelCase('Q'), 'q');
    expect(camelCase(''), '');
    expect(camelCase('Null'), 'null');
    expect(camelCase(' '), '');
    expect(camelCase('***'), '');
    expect(camelCase('\n\n\n\n   ***\t\t'), '');
    expect(camelCase(' quartet'), 'quartet');
    expect(camelCase('*quartet'), 'quartet');
    expect(camelCase('Квартет'), 'квартет');
    expect(camelCase('КВАРТЕТ'), 'квартет');
  });

  test('camelCase(String) should return an empty string if null is passed in.',
      () {
    expect(camelCase(null), '');
  });

  test('camelCase() should have no effects on Chinese characters', () {
    expect(camelCase('四重奏'), '四重奏');
    expect(camelCase('四重奏 Quartet'), '四重奏Quartet');
    expect(camelCase('Quartet 四重奏'), 'quartet四重奏');
    expect(camelCase('QUARTET 四重奏'), 'quartet四重奏');
  });
}

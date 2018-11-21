import "package:test/test.dart";
import 'package:quartet_dart/src/case/snake_case.dart';
import '../consts.dart';

void main() {
  test(
      'snakeCase(String) should strip off all special characters and return the snake case of a string.',
      () {
    expect(snakeCase('quartet'), 'quartet');
    expect(snakeCase('QUaRtEt'), 'q_ua_rt_et');
    expect(snakeCase('Quartet'), 'quartet');
    expect(snakeCase('QUARTET'), 'quartet');
    expect(snakeCase('CapLock'), 'cap_lock');
    expect(snakeCase('String QUARTET'), 'string_quartet');
    expect(snakeCase('string quartet'), 'string_quartet');
    expect(snakeCase('String quartet'), 'string_quartet');
    expect(snakeCase('XMLHttpRequest'), 'xml_http_request');
    expect(snakeCase('Elevation of 8848m'), 'elevation_of_8848_m');
    expect(snakeCase('-string-quartet-'), 'string_quartet');
    expect(snakeCase('/path/to/quartet.dart'), 'path_to_quartet_dart');
    expect(snakeCase('__string__quartet__'), 'string_quartet');
    expect(snakeCase(PRINTABLE_ASCII),
        '0123456789_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz');
    expect(snakeCase('Q'), 'q');
    expect(snakeCase(''), '');
    expect(snakeCase('Null'), 'null');
    expect(snakeCase(' '), '');
    expect(snakeCase('***'), '');
    expect(snakeCase('\n\n\n\n   ***\t\t'), '');
    expect(snakeCase(' quartet'), 'quartet');
    expect(snakeCase('*quartet'), 'quartet');
    expect(snakeCase('Квартет'), 'квартет');
    expect(snakeCase('КВАРТЕТ'), 'квартет');
  });

  test('snakeCase(String) should return an empty string if null is passed in.',
      () {
    expect(snakeCase(null), '');
  });

  test('snakeCase() should have no effects on Chinese characters', () {
    expect(snakeCase('四重奏'), '四重奏');
    expect(snakeCase('四重奏 Quartet'), '四重奏_quartet');
    expect(snakeCase('四重奏Quartet'), '四重奏quartet');
    expect(snakeCase('Quartet 四重奏'), 'quartet_四重奏');
    expect(snakeCase('QUARTET 四重奏'), 'quartet_四重奏');
    expect(snakeCase('Quartet四重奏'), 'quartet_四重奏');
  });
}

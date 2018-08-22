import "package:test/test.dart";
import 'package:quartet_dart/src/case/decapitalize.dart';

void main() {
  test(
      'decapitalize(String) only turns the first character in a string to lower case and leaves the rest as is.',
      () {
    expect(decapitalize('quartet'), 'quartet');
    expect(decapitalize('QUaRtEt'), 'qUaRtEt');
    expect(decapitalize('Quartet'), 'quartet');
    expect(decapitalize('CapLock'), 'capLock');
    expect(decapitalize('Q'), 'q');
    expect(decapitalize(''), '');
    expect(decapitalize('Null'), 'null');
    expect(decapitalize(' '), ' ');
    expect(decapitalize(' quartet'), ' quartet');
    expect(decapitalize('*quartet'), '*quartet');
    expect(decapitalize('Квартет'), 'квартет');
    expect(decapitalize('КВАРТЕТ'), 'кВАРТЕТ');
  });

  test(
      'decapitalize(String) should return an empty string if null is passed in.',
      () {
    expect(decapitalize(null), '');
  });

  test('decapitalize() should have no effects on Chinese characters', () {
    expect(decapitalize('四重奏'), '四重奏');
    expect(decapitalize('四重奏 Quartet'), '四重奏 Quartet');
    expect(decapitalize('Quartet 四重奏'), 'quartet 四重奏');
    expect(decapitalize('QUARTET 四重奏'), 'qUARTET 四重奏');
  });
}

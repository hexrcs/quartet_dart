import "package:test/test.dart";
import 'package:quartet/src/case/swap_case.dart';

void main() {
  test(
      'swapCase(String) swaps cases of all characters in a string.',
      () {
    expect(swapCase('quartet'), 'QUARTET');
    expect(swapCase('qUaRtEt'), 'QuArTeT');
    expect(swapCase('Quartet'), 'qUARTET');
    expect(swapCase('capLock'), 'CAPlOCK');
    expect(swapCase('q'), 'Q');
    expect(swapCase(''), '');
    expect(swapCase('null'), 'NULL');
    expect(swapCase(' '), ' ');
    expect(swapCase(' quartet'), ' QUARTET');
    expect(swapCase('*quartet'), '*QUARTET');
    expect(swapCase('квартет'), 'КВАРТЕТ');
    expect(swapCase('Квартет'), 'кВАРТЕТ');
    expect(swapCase('КВАРТЕТ'), 'квартет');
  });

  test('swapCase(String) should return an empty string if null is passed in.',
      () {
    expect(swapCase(null), '');
  });

  test('swapCase() should have no effects on Chinese characters', () {
    expect(swapCase('四重奏'), '四重奏');
    expect(swapCase('四重奏 quartet'), '四重奏 QUARTET');
    expect(swapCase('quartet 四重奏'), 'QUARTET 四重奏');
    expect(swapCase('QUARTET 四重奏'), 'quartet 四重奏');
    expect(swapCase('Quartet 四重奏'), 'qUARTET 四重奏');
  });
}

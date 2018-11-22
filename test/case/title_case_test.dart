import "package:test/test.dart";
import 'package:quartet_dart/src/case/title_case.dart';

void main() {
  test('titleCase(String) should return the title case of a string.', () {
    expect(titleCase('quartet'), 'Quartet');
    expect(titleCase('QUaRtEt'), 'QUaRtEt');
    expect(titleCase('Quartet'), 'Quartet');
    expect(titleCase('QUARTET'), 'Quartet');
    expect(titleCase('CapLock'), 'CapLock');
    expect(titleCase('String QUARTET'), 'String Quartet');
    expect(titleCase('string quartet'), 'String Quartet');
    expect(titleCase('String quartet'), 'String Quartet');
    expect(titleCase('XMLHttpRequest'), 'XmlHttpRequest');
    expect(titleCase('Elevation of 8848m'), 'Elevation Of 8848M');
    expect(titleCase('-string-quartet-'), '-String-Quartet-');
    expect(titleCase('/path/to/quartet.dart'), '/Path/To/Quartet.Dart');
    expect(titleCase('__string__quartet__'), '__String__Quartet__');
    expect(titleCase('Q'), 'Q');
    expect(titleCase(''), '');
    expect(titleCase('Null'), 'Null');
    expect(titleCase(' '), ' ');
    expect(titleCase('***'), '***');
    expect(titleCase('\n\n\n\n   ***\t\t'), '\n\n\n\n   ***\t\t');
    expect(titleCase(' quartet'), ' Quartet');
    expect(titleCase('*quartet'), '*Quartet');
    expect(titleCase('Квартет'), 'Квартет');
    expect(titleCase('КВАРТЕТ'), 'Квартет');
  });

  test('titleCase(String) should return an empty string if null is passed in.',
      () {
    expect(titleCase(null), '');
  });

  test('titleCase() should have no effects on Chinese characters', () {
    expect(titleCase('四重奏'), '四重奏');
    expect(titleCase('四重奏 Quartet'), '四重奏 Quartet');
    expect(titleCase('四重奏 quartet'), '四重奏 Quartet');
    expect(titleCase('Quartet 四重奏'), 'Quartet 四重奏');
    expect(titleCase('quartet 四重奏'), 'Quartet 四重奏');
    expect(titleCase('QUARTET 四重奏'), 'Quartet 四重奏');
  });

  test(
      'titleCase() should return the title case and not capitalize at specific characters',
      () {
    expect(titleCase('jean-luc is good-looking', ['-']),
        'Jean-luc Is Good-looking');
    expect(titleCase('Un·e déput·é·e', ['·']), 'Un·e Déput·é·e');
    expect(titleCase('Who*wants to-try*next?', ['-', '*']),
        'Who*wants To-try*next?');
    expect(
        titleCase('WHO*WANTS*TO*TRY*NEXT?', ['*']), 'Who*wants*to*try*next?');
    expect(
        titleCase(
            'Well, congratulations! You got yourself caught! Now what\'s the next step in your master plan?',
            ["'"]),
        'Well, Congratulations! You Got Yourself Caught! Now What\'s The Next Step In Your Master Plan?');
  });
}

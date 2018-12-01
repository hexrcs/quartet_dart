import "package:test/test.dart";
import 'package:quartet/src/split/words.dart';

void main() {
  test('words(String) should split the string into list of words.', () {
    expect(words('42'), ['42']);
    expect(words('42+42=84'), ['42', '42', '84']);
    expect(words('quartet'), ['quartet']);
    expect(words('  quartet '), ['quartet']);
    expect(words('string quartet'), ['string', 'quartet']);
    expect(words(' string,  quartet  '), ['string', 'quartet']);
    expect(words('string-quartet'), ['string', 'quartet']);
    expect(words('-string-quartet-'), ['string', 'quartet']);
    expect(words('-string=quartet&is)awesome'),
        ['string', 'quartet', 'is', 'awesome']);
    expect(words('stringQuartetIsAwesome'),
        ['string', 'Quartet', 'Is', 'Awesome']);
    expect(words('stringQuartetisAwesome'), ['string', 'Quartetis', 'Awesome']);
    expect(words('stringQUARTETisAwesome'),
        ['string', 'QUARTE', 'Tis', 'Awesome']);
    expect(words('stringQUARTETIsAwesome'),
        ['string', 'QUARTET', 'Is', 'Awesome']);
    expect(words('StringQUARTETIsAwesome'),
        ['String', 'QUARTET', 'Is', 'Awesome']);
    expect(words('StringQuartet-isAwesome'),
        ['String', 'Quartet', 'is', 'Awesome']);
    expect(words('combination of 4 instruments makes a quartet.'),
        ['combination', 'of', '4', 'instruments', 'makes', 'a', 'quartet']);
    expect(words('combinationOf4instruments'),
        ['combination', 'Of', '4', 'instruments']);
    expect(words('combinationOf-4-Instruments'),
        ['combination', 'Of', '4', 'Instruments']);
    expect(
        words('String Quartet No. 6 in B-Flat Major, Op. 18: III. Scherzo'), [
      'String',
      'Quartet',
      'No',
      '6',
      'in',
      'B',
      'Flat',
      'Major',
      'Op',
      '18',
      'III',
      'Scherzo'
    ]);
    expect(words('\n'), []);
    expect(words('***'), []);
    expect(words('***---'), []);
    expect(words('***---'), []);
    expect(words('Quartet\'s awesome!'), ['Quartet', 's', 'awesome']);
  });

  test('words() should return an empty list if null is passed in.', () {
    expect(words(null), []);
  });
}

import "package:test/test.dart";
import 'package:quartet/src/chop/truncate.dart';

void main() {
  test('truncate() should truncate a string', () {
    expect(
        truncate(
            'Once upon a time there lived in a certain village a little country girl',
            4),
        'O...');
    expect(truncate('I\'ll go this way and go you that', 19, ' (read more)'),
        'I\'ll go (read more)');
    expect(truncate('Little Red Riding Hood', 0, '(more)'), '(more)');
    expect(truncate('Little Red Riding Hood', 3, '(more)'), '(more)');
    expect(truncate('Little Red Riding Hood', 7, '(more)'), 'L(more)');
    expect(truncate('Little Red Riding Hood', 9, '(more)'), 'Lit(more)');
    expect(truncate('Little Red Riding Hood', 77, '(more)'),
        'Little Red Riding Hood');
  });

  test('truncate() should return an empty string for null.', () {
    expect(truncate(null, 20), '');
    expect(truncate(null, null), '');
    expect(truncate('cool', null), '');
  });
}

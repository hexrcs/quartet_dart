import "package:test/test.dart";
import 'package:quartet/src/chop/prune.dart';

void main() {
  test('prune() should prune a string.', () {
    expect(
        prune(
            'Once upon a time there lived in a certain village a little country girl',
            7),
        'Once...');
    expect(prune('I\'ll go this way and go you that', 19, ' (read more)'),
        'I\'ll go (read more)');
    expect(prune('Little Red Riding Hood', 0, '(more)'), '(more)');
    expect(prune('Little Red Riding Hood', 1, '...'), '...');
    expect(prune('Little Red Riding Hood', 5, '...'), '...');
    expect(prune('Little Red Riding Hood', 6, '...'), '...');
    expect(prune('Little Red Riding Hood', 9, '...'), 'Little...');
    expect(prune('Little Red Riding Hood', 11, '...'), 'Little...');
    expect(prune('Little Red Riding Hood', 20, '...'), 'Little Red Riding...');
    expect(
        prune('Little Red Riding Hood', 22, '...'), 'Little Red Riding Hood');
  });

  test('prune() should prune a string with extra ASCII characters.', () {
    expect(prune('Привет, как дела', 10, '...'), 'Привет...');
    expect(prune('La variété la plus fréquente est la blanche', 12, '..'),
        'La variété..');
  });

  test(
      'prune() should not prune a string if length parameter is greater or equal than string length.',
      () {
    expect(prune('Once upon', 20), 'Once upon');
    expect(prune('Once', 4, ' (read more)'), 'Once');
    expect(prune('', 0, '....'), '');
  });

  test(
      'prune() should return an empty string for null.',
      () {
    expect(prune(null, 20), '');
    expect(prune(null, null), '');
    expect(prune('cool', null), '');
  });
}

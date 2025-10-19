import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('findDuplicates', () {
    test('Find duplicates in integer list', () {
      final result = findDuplicates([5, 3, 1, 2, 3, 5, 6, 1, 7]);
      expect(result.toSet(), equals({1, 3, 5}));
    });

    test('Find duplicates in string list', () {
      final result = findDuplicates(['a', 'b', 'a', 'c', 'b', 'd']);
      expect(result.toSet(), equals({'a', 'b'}));
    });

    test('List with no duplicates returns empty list', () {
      final result = findDuplicates([1, 2, 3, 4]);
      expect(result, isEmpty);
    });

    test('Empty list returns empty result', () {
      final result = findDuplicates([]);
      expect(result, isEmpty);
    });

    test('List with all duplicates', () {
      final result = findDuplicates(['x', 'x', 'x', 'x']);
      expect(result.toSet(), equals({'x'}));
    });

    test('Order of result follows order of first appearance', () {
      final result = findDuplicates([3, 1, 2, 1, 3, 2]);
      expect(result, equals([3, 1, 2]));
    });
  });
}

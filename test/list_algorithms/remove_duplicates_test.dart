import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('removeDuplicates', () {
    test('removes duplicates from int list', () {
      final input = [1, 2, 2, 3, 1, 4];
      final expected = [1, 2, 3, 4];
      expect(removeDuplicates(input), equals(expected));
    });

    test('removes duplicates from string list', () {
      final input = ['a', 'b', 'a', 'c', 'b'];
      final expected = ['a', 'b', 'c'];
      expect(removeDuplicates(input), equals(expected));
    });

    test('empty list returns empty list', () {
      expect(removeDuplicates([]), equals([]));
    });

    test('no duplicates returns same list', () {
      final input = [1, 2, 3];
      expect(removeDuplicates(input), equals([1, 2, 3]));
    });
  });
}

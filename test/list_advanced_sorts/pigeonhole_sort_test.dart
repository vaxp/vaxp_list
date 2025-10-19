import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Pigeonhole Sort', () {
    test('Sorts integers', () {
      final arr = [8, 3, 2, 7, 4, 6, 8];
      pigeonholeSort(arr);
      expect(arr, equals([2, 3, 4, 6, 7, 8, 8]));
    });
    test('Sorts already sorted', () {
      final arr = [1, 2, 3];
      pigeonholeSort(arr);
      expect(arr, equals([1, 2, 3]));
    });
    test('Empty list', () {
      final arr = <int>[];
      pigeonholeSort(arr);
      expect(arr, equals([]));
    });
    test('Single element', () {
      final arr = [5];
      pigeonholeSort(arr);
      expect(arr, equals([5]));
    });
  });
}

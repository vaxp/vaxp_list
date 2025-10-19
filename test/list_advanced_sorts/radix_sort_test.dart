import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Radix Sort', () {
    test('Sorts integers', () {
      final arr = [170, 45, 75, 90, 802, 24, 2, 66];
      radixSort(arr);
      expect(arr, equals([2, 24, 45, 66, 75, 90, 170, 802]));
    });
    test('Sorts already sorted', () {
      final arr = [1, 2, 3];
      radixSort(arr);
      expect(arr, equals([1, 2, 3]));
    });
    test('Empty list', () {
      final arr = <int>[];
      radixSort(arr);
      expect(arr, equals([]));
    });
    test('Single element', () {
      final arr = [5];
      radixSort(arr);
      expect(arr, equals([5]));
    });
  });
}

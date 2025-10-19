import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Merge Sort Tests', () {
    test('Sorts integers correctly', () {
      final list = [38, 27, 43, 3, 9, 82, 10];
      final sorted = mergeSort(list);
      expect(sorted, equals([3, 9, 10, 27, 38, 43, 82]));
    });

    test('Works with empty list', () {
      final list = <int>[];
      expect(mergeSort(list), equals([]));
    });

    test('Works with already sorted list', () {
      final list = [1, 2, 3];
      expect(mergeSort(list), equals([1, 2, 3]));
    });
  });
}

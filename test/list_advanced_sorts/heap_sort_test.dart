import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Heap Sort', () {
    test('Sorts integers', () {
      final arr = [4, 10, 3, 5, 1];
      heapSort(arr);
      expect(arr, equals([1, 3, 4, 5, 10]));
    });
    test('Sorts doubles', () {
      final arr = [3.2, 1.5, 4.8, 2.1];
      heapSort(arr);
      expect(arr, equals([1.5, 2.1, 3.2, 4.8]));
    });
    test('Sorts strings', () {
      final arr = ['banana', 'apple', 'cherry'];
      heapSort(arr);
      expect(arr, equals(['apple', 'banana', 'cherry']));
    });
    test('Empty list', () {
      final arr = <int>[];
      heapSort(arr);
      expect(arr, equals([]));
    });
  });
}

import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Bucket Sort', () {
    test('Sorts doubles', () {
      final arr = [0.42, 4.21, 3.14, 2.71, 1.61, 0.99];
      bucketSort(arr);
      expect(arr, equals([0.42, 0.99, 1.61, 2.71, 3.14, 4.21]));
    });
    test('Sorts already sorted', () {
      final arr = [1.0, 2.0, 3.0];
      bucketSort(arr);
      expect(arr, equals([1.0, 2.0, 3.0]));
    });
    test('Empty list', () {
      final arr = <double>[];
      bucketSort(arr);
      expect(arr, equals([]));
    });
    test('Single element', () {
      final arr = [5.5];
      bucketSort(arr);
      expect(arr, equals([5.5]));
    });
  });
}

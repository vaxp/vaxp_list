import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Shell Sort', () {
    test('Sorts integers', () {
      final arr = [12, 34, 54, 2, 3];
      shellSort(arr);
      expect(arr, equals([2, 3, 12, 34, 54]));
    });
    test('Sorts doubles', () {
      final arr = [3.2, 1.5, 4.8, 2.1];
      shellSort(arr);
      expect(arr, equals([1.5, 2.1, 3.2, 4.8]));
    });
    test('Sorts strings', () {
      final arr = ['banana', 'apple', 'cherry'];
      shellSort(arr);
      expect(arr, equals(['apple', 'banana', 'cherry']));
    });
    test('Empty list', () {
      final arr = <int>[];
      shellSort(arr);
      expect(arr, equals([]));
    });
  });
}

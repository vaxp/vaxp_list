import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Pancake Sort', () {
    test('Sorts integers', () {
      final arr = [3, 6, 1, 10, 2];
      pancakeSort(arr);
      expect(arr, equals([1, 2, 3, 6, 10]));
    });
    test('Sorts doubles', () {
      final arr = [3.2, 1.5, 4.8, 2.1];
      pancakeSort(arr);
      expect(arr, equals([1.5, 2.1, 3.2, 4.8]));
    });
    test('Sorts strings', () {
      final arr = ['banana', 'apple', 'cherry'];
      pancakeSort(arr);
      expect(arr, equals(['apple', 'banana', 'cherry']));
    });
    test('Empty list', () {
      final arr = <int>[];
      pancakeSort(arr);
      expect(arr, equals([]));
    });
  });
}

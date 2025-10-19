import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Comb Sort', () {
    test('Sorts integers', () {
      final arr = [8, 4, 1, 56, 3, -44, 23, -6, 28, 0];
      combSort(arr);
      expect(arr, equals([-44, -6, 0, 1, 3, 4, 8, 23, 28, 56]));
    });
    test('Sorts doubles', () {
      final arr = [3.2, 1.5, 4.8, 2.1];
      combSort(arr);
      expect(arr, equals([1.5, 2.1, 3.2, 4.8]));
    });
    test('Sorts strings', () {
      final arr = ['banana', 'apple', 'cherry'];
      combSort(arr);
      expect(arr, equals(['apple', 'banana', 'cherry']));
    });
    test('Empty list', () {
      final arr = <int>[];
      combSort(arr);
      expect(arr, equals([]));
    });
  });
}

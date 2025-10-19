import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Selection Sort Tests', () {
    test('Sorts integers correctly', () {
      List<int> list = [29, 10, 14, 37, 13];
      selectionSort<int>(list);
      expect(list, equals([10, 13, 14, 29, 37]));
    });

    test('Sorts doubles correctly', () {
      List<double> list = [5.2, 1.8, 3.3, 2.9];
      selectionSort<double>(list);
      expect(list, equals([1.8, 2.9, 3.3, 5.2]));
    });

    test('Sorts strings alphabetically', () {
      List<String> list = ['pear', 'apple', 'banana'];
      selectionSort<String>(list);
      expect(list, equals(['apple', 'banana', 'pear']));
    });

    test('Handles empty list', () {
      List<int> list = [];
      selectionSort<int>(list);
      expect(list, equals([]));
    });

    test('Handles single element', () {
      List<int> list = [42];
      selectionSort<int>(list);
      expect(list, equals([42]));
    });
  });
}

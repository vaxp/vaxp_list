import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Quick Sort Tests', () {
    test('Sorts integer list correctly', () {
      List<int> list = [10, 7, 8, 9, 1, 5];
      quickSort<int>(list, 0, list.length - 1);
      expect(list, equals([1, 5, 7, 8, 9, 10]));
    });

    test('Sorts double list correctly', () {
      List<double> list = [3.4, 1.1, 5.6, 2.0];
      quickSort<double>(list, 0, list.length - 1);
      expect(list, equals([1.1, 2.0, 3.4, 5.6]));
    });

    test('Sorts string list alphabetically', () {
      List<String> list = ['zebra', 'apple', 'lemon'];
      quickSort<String>(list, 0, list.length - 1);
      expect(list, equals(['apple', 'lemon', 'zebra']));
    });

    test('Handles already sorted list', () {
      List<int> list = [1, 2, 3, 4];
      quickSort<int>(list, 0, list.length - 1);
      expect(list, equals([1, 2, 3, 4]));
    });

    test('Handles single-element list', () {
      List<int> list = [42];
      quickSort<int>(list, 0, list.length - 1);
      expect(list, equals([42]));
    });

    test('Handles empty list', () {
      List<int> list = [];
      quickSort<int>(list, 0, list.length - 1);
      expect(list, equals([]));
    });
  });
}

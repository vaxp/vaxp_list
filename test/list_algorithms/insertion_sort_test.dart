import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Insertion Sort Tests', () {
    test('Sorts integer list correctly', () {
      List<int> list = [9, 5, 1, 4, 3];
      insertionSort<int>(list);
      expect(list, equals([1, 3, 4, 5, 9]));
    });

    test('Sorts double list correctly', () {
      List<double> list = [3.5, 1.2, 4.8, 2.1];
      insertionSort<double>(list);
      expect(list, equals([1.2, 2.1, 3.5, 4.8]));
    });

    test('Sorts string list alphabetically', () {
      List<String> list = ['banana', 'apple', 'cherry'];
      insertionSort<String>(list);
      expect(list, equals(['apple', 'banana', 'cherry']));
    });

    test('Handles empty list', () {
      List<int> list = [];
      insertionSort<int>(list);
      expect(list, equals([]));
    });

    test('Handles single element', () {
      List<int> list = [100];
      insertionSort<int>(list);
      expect(list, equals([100]));
    });
  });
}

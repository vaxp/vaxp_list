import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Counting Sort Tests', () {
    test('Sorts list of positive integers correctly', () {
      List<int> list = [4, 2, 2, 8, 3, 3, 1];
      List<int> result = countingSort(list);
      expect(result, equals([1, 2, 2, 3, 3, 4, 8]));
    });

    test('Handles already sorted list', () {
      List<int> list = [1, 2, 3, 4];
      List<int> result = countingSort(list);
      expect(result, equals([1, 2, 3, 4]));
    });

    test('Handles list with duplicates and zeros', () {
      List<int> list = [0, 0, 0, 1, 1, 2];
      List<int> result = countingSort(list);
      expect(result, equals([0, 0, 0, 1, 1, 2]));
    });

    test('Handles empty list', () {
      List<int> list = [];
      List<int> result = countingSort(list);
      expect(result, isEmpty);
    });

    test('Throws error if negative number is included', () {
      List<int> list = [5, 3, -1, 2];
      expect(() => countingSort(list), throwsArgumentError);
    });

    test('Handles list with all elements the same', () {
      List<int> list = [5, 5, 5];
      List<int> result = countingSort(list);
      expect(result, equals([5, 5, 5]));
    });
  });
}

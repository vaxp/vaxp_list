import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Reverse List Tests', () {
    test('Reverses list of integers', () {
      List<int> list = [1, 2, 3, 4, 5];
      reverseList(list);
      expect(list, equals([5, 4, 3, 2, 1]));
    });

    test('Reverses list of strings', () {
      List<String> list = ['a', 'b', 'c'];
      reverseList(list);
      expect(list, equals(['c', 'b', 'a']));
    });

    test('Reverses list with one element', () {
      List<int> list = [42];
      reverseList(list);
      expect(list, equals([42]));
    });

    test('Reverses empty list', () {
      List<int> list = [];
      reverseList(list);
      expect(list, isEmpty);
    });

    test('Reverses list of booleans', () {
      List<bool> list = [true, false, true];
      reverseList(list);
      expect(list, equals([true, false, true].reversed.toList()));
    });
  });
}

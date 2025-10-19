import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Find Max and Min', () {
    test('Find max and min in integer list', () {
      final list = [42, 17, 93, 58, 12, 89];
      expect(findMax(list), equals(93));
      expect(findMin(list), equals(12));
    });

    test('Find max and min in string list', () {
      final list = ['apple', 'banana', 'grape', 'cherry'];
      expect(findMax(list), equals('grape')); // lexicographically
      expect(findMin(list), equals('apple'));
    });

    test('Find max and min in list with one element', () {
      final list = [99];
      expect(findMax(list), equals(99));
      expect(findMin(list), equals(99));
    });

    test('Throws on empty list', () {
      expect(() => findMax(<int>[]), throwsException);
      expect(() => findMin(<int>[]), throwsException);
    });

    test('Find max and min in list of doubles', () {
      final list = [3.5, 9.1, 1.2, 4.8];
      expect(findMax(list), equals(9.1));
      expect(findMin(list), equals(1.2));
    });
  });
}

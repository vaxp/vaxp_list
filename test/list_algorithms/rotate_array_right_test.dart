import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('rotateArrayRight', () {
    test('rotates int list by 3 steps', () {
      expect(
        rotateArrayRight([1, 2, 3, 4, 5, 6, 7], 3),
        equals([5, 6, 7, 1, 2, 3, 4]),
      );
    });

    test('rotates string list', () {
      expect(
        rotateArrayRight(['a', 'b', 'c', 'd'], 1),
        equals(['d', 'a', 'b', 'c']),
      );
    });

    test('k larger than list length', () {
      expect(rotateArrayRight([1, 2, 3], 5), equals([2, 3, 1]));
    });

    test('k is zero', () {
      expect(rotateArrayRight([1, 2, 3], 0), equals([1, 2, 3]));
    });

    test('empty list returns empty', () {
      expect(rotateArrayRight([], 3), equals([]));
    });
  });
}

import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Generic Binary Search Tests', () {
    test('Works with integers', () {
      expect(binarySearch<int>([1, 3, 5, 7, 9], 5), equals(2));
      expect(binarySearch<int>([1, 3, 5, 7, 9], 6), equals(-1));
    });

    test('Works with doubles', () {
      expect(binarySearch<double>([1.1, 2.2, 3.3, 4.4], 3.3), equals(2));
      expect(binarySearch<double>([1.1, 2.2, 3.3, 4.4], 5.5), equals(-1));
    });

    test('Works with strings', () {
      expect(
        binarySearch<String>(['apple', 'banana', 'cherry'], 'banana'),
        equals(1),
      );
      expect(
        binarySearch<String>(['apple', 'banana', 'cherry'], 'date'),
        equals(-1),
      );
    });

    test('Empty list returns -1', () {
      expect(binarySearch<int>([], 10), equals(-1));
    });

    test('Single element', () {
      expect(binarySearch<int>([42], 42), equals(0));
      expect(binarySearch<int>([42], 99), equals(-1));
    });
  });
}

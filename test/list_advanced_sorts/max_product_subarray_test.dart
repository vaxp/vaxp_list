import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Maximum Product Subarray', () {
    test('Standard case', () {
      expect(maxProductSubarray([2.0, 3.0, -2.0, 4.0]), equals(6.0));
    });
    test('All negative', () {
      expect(maxProductSubarray([-2.0, -3.0, -4.0]), equals(12.0));
    });
    test('Single element', () {
      expect(maxProductSubarray([5.0]), equals(5.0));
    });
    test('Throws on empty list', () {
      expect(() => maxProductSubarray([]), throwsArgumentError);
    });
    test('Zeros in array', () {
      expect(maxProductSubarray([0.0, 2.0, -1.0, 0.0, 3.0, -2.0]), equals(3.0));
    });
  });
}

import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Max Sum Subarray of Size K', () {
    test('Standard case', () {
      final result = maxSumSubarrayOfSizeK([2.0, 1.0, 5.0, 1.0, 3.0, 2.0], 3);
      expect(result, equals(9.0));
    });

    test('All negative numbers', () {
      final result = maxSumSubarrayOfSizeK([-1.0, -2.0, -3.0, -4.0, -5.0], 2);
      expect(result, equals(-3.0));
    });

    test('List length == k', () {
      final result = maxSumSubarrayOfSizeK([1.0, 2.0, 3.0], 3);
      expect(result, equals(6.0));
    });

    test('Floating point numbers', () {
      final result = maxSumSubarrayOfSizeK([1.5, 2.3, 3.1, 0.4], 2);
      expect(result, closeTo(5.4, 0.0001));
    });

    test('Throws if list is shorter than k', () {
      expect(() => maxSumSubarrayOfSizeK([1.0, 2.0], 3), throwsArgumentError);
    });
  });
}

import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Prefix Sum', () {
    test('computes prefix sum for int list', () {
      final input = [2, 4, 1, 3, 6];
      final result = computePrefixSum(input);
      expect(result, equals([2, 6, 7, 10, 16]));
    });

    test('computes prefix sum for double list', () {
      final input = [1.5, 2.0, 3.5];
      final result = computePrefixSum(input);
      expect(result, equals([1.5, 3.5, 7.0]));
    });

    test('rangeSum between two indices', () {
      final prefix = computePrefixSum([2, 4, 1, 3, 6]);
      expect(rangeSum(prefix, 1, 3), equals(8)); // 4+1+3
    });

    test('rangeSum from 0 to j', () {
      final prefix = computePrefixSum([5, 5, 5]);
      expect(rangeSum(prefix, 0, 2), equals(15));
    });

    test('throws for invalid range', () {
      final prefix = computePrefixSum([1, 2, 3]);
      expect(() => rangeSum(prefix, -1, 2), throwsRangeError);
      expect(() => rangeSum(prefix, 1, 5), throwsRangeError);
      expect(() => rangeSum(prefix, 2, 1), throwsRangeError);
    });
  });
}

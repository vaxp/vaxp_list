import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  test('Min sum subarray of size K', () {
    expect(minSumSubarrayOfSizeK([4, 2, 1, 7, 8, 1, 2, 8, 1, 0], 3), equals(7));
    expect(minSumSubarrayOfSizeK([1, 2, 3, 4, 5], 2), equals(3));
    expect(minSumSubarrayOfSizeK([10, -1, -2, -3, 5], 3), equals(-6));
  });
}

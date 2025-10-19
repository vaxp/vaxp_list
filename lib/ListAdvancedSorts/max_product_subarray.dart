/// Finds the maximum product of a contiguous subarray in a list using dynamic programming.
///
/// This function returns the maximum product that can be obtained from any contiguous subarray of [nums].
/// It handles negative numbers by tracking both the maximum and minimum products at each step.
///
/// Time Complexity: O(n), where n is the length of [nums].
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var result = maxProductSubarray([2.0, 3.0, -2.0, 4.0]);
/// print(result); // Outputs: 6.0 ([2.0, 3.0])
/// ```
double maxProductSubarray(List<double> nums) {
  if (nums.isEmpty) throw ArgumentError('Input list cannot be empty.');
  double maxProd = nums[0], minProd = nums[0], result = nums[0];
  for (int i = 1; i < nums.length; i++) {
    double tempMax = maxProd;
    maxProd = [
      nums[i],
      maxProd * nums[i],
      minProd * nums[i],
    ].reduce((a, b) => a > b ? a : b);
    minProd = [
      nums[i],
      tempMax * nums[i],
      minProd * nums[i],
    ].reduce((a, b) => a < b ? a : b);
    result = result > maxProd ? result : maxProd;
  }
  return result;
}

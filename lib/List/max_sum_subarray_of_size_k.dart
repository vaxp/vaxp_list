/// 🔍 Returns the maximum sum of any contiguous subarray of size [k] using the Sliding Window technique (Generic for num).
///
/// Example:
/// ```dart
/// maxSumSubarrayOfSizeK([2, 1, 5, 1, 3, 2], 3); // returns 9
/// maxSumSubarrayOfSizeK([2.0, 1.0, 5.0, 1.0, 3.0, 2.0], 3); // returns 9.0
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
T maxSumSubarrayOfSizeK<T extends num>(List<T> list, int k) {
  if (list.length < k) {
    throw ArgumentError("Input list is shorter than k = $k");
  }
  num windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += list[i];
  }
  num maxSum = windowSum;
  for (int end = k; end < list.length; end++) {
    windowSum += list[end] - list[end - k];
    if (windowSum > maxSum) {
      maxSum = windowSum;
    }
  }
  return (maxSum as T);
}

/// Returns the minimum sum of any subarray with size k using Sliding Window (Generic for num).
///
/// Example:
/// ```dart
/// minSumSubarrayOfSizeK([4, 2, 1, 7, 8, 1, 2, 8, 1, 0], 3); // returns 4
/// minSumSubarrayOfSizeK([4.0, 2.0, 1.0, 7.0, 8.0, 1.0, 2.0, 8.0, 1.0, 0.0], 3); // returns 4.0
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
T minSumSubarrayOfSizeK<T extends num>(List<T> list, int k) {
  if (list.length < k) {
    throw Exception("List length is less than k.");
  }
  T windowSum = (0 as T);
  for (int i = 0; i < k; i++) {
    windowSum = (windowSum + list[i]) as T;
  }
  T minSum = windowSum;
  for (int end = k; end < list.length; end++) {
    windowSum = (windowSum + list[end] - list[end - k]) as T;
    if (windowSum < minSum) {
      minSum = windowSum;
    }
  }
  return minSum;
}

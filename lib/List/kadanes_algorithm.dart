/// 📈 Returns the maximum sum of a contiguous subarray using Kadane's Algorithm (Generic for num).
///
/// The function finds the subarray (with at least one element) that has the largest sum.
///
/// Example:
/// ```dart
/// kadanesAlgorithm([-2, 1, -3, 4, -1, 2, 1, -5, 4]); // returns 6
/// kadanesAlgorithm([-2.0, 1.0, -3.0, 4.0, -1.0, 2.0, 1.0, -5.0, 4.0]); // returns 6.0
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
T kadanesAlgorithm<T extends num>(List<T> list) {
  if (list.isEmpty) {
    throw ArgumentError("Input list cannot be empty.");
  }
  T maxSoFar = list[0];
  T currentMax = list[0];
  for (int i = 1; i < list.length; i++) {
    currentMax =
        list[i] > (currentMax + list[i])
            ? list[i]
            : (currentMax + list[i]) as T;
    maxSoFar = currentMax > maxSoFar ? currentMax : maxSoFar;
  }
  return maxSoFar;
}

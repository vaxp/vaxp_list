/// 🔢 Two Sum in Sorted List (Two-Pointer Technique)
///
/// Finds and returns a pair of elements in a sorted list that sum to the given [target].
/// Uses the two-pointer approach for O(n) time complexity.
///
/// - The input [list] must be sorted in non-decreasing order.
/// - Returns a list containing the pair if found, or null if no such pair exists.
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// twoSumSorted([1, 2, 3, 4, 6], 6); // returns [2, 4]
/// twoSumSorted([2, 7, 11, 15], 9); // returns [2, 7]
/// twoSumSorted([1, 2, 3], 7); // returns null
/// ```
List<T>? twoSumSorted<T extends num>(List<T> list, T target) {
  int start = 0;
  int end = list.length - 1;

  while (start < end) {
    T left = list[start];
    T right = list[end];
    num sum = left + right;

    if (sum == target) {
      return [left, right];
    } else if (sum < target) {
      start++;
    } else {
      end--;
    }
  }

  return null;
}

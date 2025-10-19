/// Finds the length of the longest strictly increasing subsequence in a list using binary search (O(n log n)).
///
/// This function returns the length of the longest strictly increasing subsequence in [nums].
/// It uses a dynamic programming approach with binary search for efficiency.
///
/// Time Complexity: O(n log n), where n is the length of [nums].
/// Space Complexity: O(n)
///
/// Example:
/// ```dart
/// var result = lisBinarySearch([10, 9, 2, 5, 3, 7, 101, 18]);
/// print(result); // Outputs: 4 ([2, 3, 7, 101])
/// ```
int lisBinarySearch(List<int> nums) {
  if (nums.isEmpty) return 0;
  final List<int> tails = [];
  for (final num in nums) {
    int left = 0, right = tails.length;
    while (left < right) {
      int mid = (left + right) >> 1;
      if (tails[mid] < num) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }
    if (left == tails.length) {
      tails.add(num);
    } else {
      tails[left] = num;
    }
  }
  return tails.length;
}

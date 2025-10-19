/// 🔍 Linear Search Algorithm (Generic)
///
/// Searches for a target value inside a list using a simple linear traversal.
/// Returns the index of the element if found, otherwise returns -1.
///
/// Example:
/// ```dart
/// linearSearch([10, 20, 30], 20); // returns 1
/// linearSearch(['a', 'b', 'c'], 'b'); // returns 1
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
int linearSearch<T>(List<T> list, T target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}

/// Removes duplicates from a given list while preserving the original order.
///
/// This function works for any data type that implements [Object].
///
/// Example:
/// ```dart
/// removeDuplicates([1, 2, 2, 3]); // returns [1, 2, 3]
/// removeDuplicates(['a', 'b', 'a']); // returns ['a', 'b']
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)
List<T> removeDuplicates<T>(List<T> list) {
  final Set<T> seen = <T>{};
  final List<T> result = [];

  for (final T item in list) {
    if (seen.add(item)) {
      result.add(item);
    }
  }

  return result;
}

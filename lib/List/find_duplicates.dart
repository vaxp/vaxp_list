/// 🔁 Returns a list of duplicate elements from the input list.
///
/// The function returns a new list containing all elements that appear
/// more than once in the input [list]. The order of duplicates is based
/// on their first appearance in the input.
///
/// Example:
/// ```dart
/// findDuplicates([1, 2, 3, 2, 4, 1]); // returns [2, 1]
/// ```
///
/// Time Complexity: O(n)
List<T> findDuplicates<T>(List<T> list) {
  final Map<T, int> frequencyMap = {};
  final List<T> duplicates = [];

  for (final item in list) {
    frequencyMap[item] = (frequencyMap[item] ?? 0) + 1;
  }

  frequencyMap.forEach((key, count) {
    if (count > 1) {
      duplicates.add(key);
    }
  });

  return duplicates;
}

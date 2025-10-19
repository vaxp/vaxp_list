/// Computes the prefix sum list of the input [list].
///
/// Works for any numeric type [T extends num].
///
/// Example:
/// ```dart
/// computePrefixSum([2, 4, 1, 3, 6]); // returns [2, 6, 7, 10, 16]
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)
List<T> computePrefixSum<T extends num>(List<T> list) {
  if (list.isEmpty) return [];

  List<T> prefix = List<T>.from(list);
  for (int i = 1; i < list.length; i++) {
    prefix[i] = (prefix[i - 1] + list[i]) as T;
  }
  return prefix;
}

/// Returns the sum from index `i` to `j` using a prefix sum [list].
///
/// Uses the formula: `sum(i..j) = prefix[j] - prefix[i-1]`
///
/// Throws if indices are out of bounds.
///
/// Time Complexity: O(1)
T rangeSum<T extends num>(List<T> prefix, int i, int j) {
  if (i < 0 || j >= prefix.length || i > j) {
    throw RangeError(
      'Invalid indices: i=$i, j=$j for prefix of length ${prefix.length}',
    );
  }
  if (i == 0) return prefix[j];
  return (prefix[j] - prefix[i - 1]) as T;
}

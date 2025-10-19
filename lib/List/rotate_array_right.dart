/// Rotates a list `k` steps to the right.
///
/// If `k` is greater than the length of the list, it wraps using modulo.
/// This works for any data type [T].
///
/// Example:
/// ```dart
/// rotateArrayRight([1, 2, 3, 4, 5], 2); // returns [4, 5, 1, 2, 3]
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)
List<T> rotateArrayRight<T>(List<T> list, int k) {
  int n = list.length;
  if (n == 0) return list;

  k = k % n;
  if (k == 0) return List<T>.from(list);

  List<T> lastPart = list.sublist(n - k);
  List<T> firstPart = list.sublist(0, n - k);

  return [...lastPart, ...firstPart];
}

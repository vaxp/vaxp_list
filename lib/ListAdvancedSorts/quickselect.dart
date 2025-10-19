/// ⚡ Quickselect Algorithm
///
/// Finds and returns the k-th smallest element in the list [arr] using the Quickselect algorithm.
/// This algorithm is efficient for selection problems, with an average time complexity of O(n).
/// The input [k] is a 0-based index (e.g., k = 0 returns the smallest element).
///
/// Usage:
/// ```dart
/// var arr = [7, 2, 1, 6, 8, 5, 3, 4];
/// var kthSmallest = quickselect(arr, 2); // Returns the 3rd smallest element (3)
/// ```
///
/// - Average Time Complexity: O(n)
/// - Worst-case Time Complexity: O(n^2)
/// - Space Complexity: O(1) (in-place)
///
/// Throws [ArgumentError] if k is out of bounds.
T quickselect<T extends Comparable>(List<T> arr, int k) {
  if (k < 0 || k >= arr.length) {
    throw ArgumentError('k is out of bounds');
  }
  int left = 0, right = arr.length - 1;
  while (left <= right) {
    int pivotIdx = left + (right - left) ~/ 2;
    T pivot = arr[pivotIdx];
    int i = left, j = right;
    while (i <= j) {
      while (arr[i].compareTo(pivot) < 0) {
        i++;
      }
      while (arr[j].compareTo(pivot) > 0) {
        j--;
      }
      if (i <= j) {
        final tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
        i++;
        j--;
      }
    }
    if (k <= j) {
      right = j;
    } else if (k >= i) {
      left = i;
    } else {
      return arr[k];
    }
  }
  return arr[k];
}

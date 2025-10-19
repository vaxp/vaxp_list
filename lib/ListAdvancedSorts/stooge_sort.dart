/// 🧙 Stooge Sort Algorithm
///
/// Sorts the list [arr] in-place using the Stooge Sort algorithm, a highly inefficient and educational sorting algorithm
/// with a time complexity of O(n^{2.7095}). Stooge Sort recursively sorts overlapping sections of the array and is mainly
/// used for teaching purposes rather than practical applications.
///
/// Usage:
/// ```dart
/// var arr = [2, 4, 5, 3, 1];
/// stoogeSort(arr); // arr is now [1, 2, 3, 4, 5]
/// ```
///
/// - Time Complexity: O(n^{2.7095})
/// - Space Complexity: O(n) (due to recursion stack)
/// - Not suitable for large datasets; for educational use only
void stoogeSort<T extends Comparable>(List<T> arr, [int i = 0, int? j]) {
  j ??= arr.length - 1;
  if (i >= j) return;
  if (arr[i].compareTo(arr[j]) > 0) {
    final tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
  }
  if (j - i + 1 > 2) {
    int t = ((j - i + 1) ~/ 3);
    stoogeSort(arr, i, j - t);
    stoogeSort(arr, i + t, j);
    stoogeSort(arr, i, j - t);
  }
}

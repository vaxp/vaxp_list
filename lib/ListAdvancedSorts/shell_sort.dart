/// 🐚 Shell Sort Algorithm
///
/// Sorts the list [arr] in-place using the Shell Sort algorithm, which is a generalization of insertion sort
/// that allows the exchange of items that are far apart. It improves the efficiency of insertion sort by breaking
/// the original list into smaller sublists using a gap sequence, and sorting these sublists using insertion sort.
///
/// Usage:
/// ```dart
/// var arr = [12, 34, 54, 2, 3];
/// shellSort(arr); // arr is now [2, 3, 12, 34, 54]
/// ```
///
/// - Time Complexity: O(n log n) best, O(n^2) worst (depends on gap sequence)
/// - Space Complexity: O(1) (in-place)
/// - Works for any list of Comparable elements
void shellSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i++) {
      T temp = arr[i];
      int j = i;
      while (j >= gap && arr[j - gap].compareTo(temp) > 0) {
        arr[j] = arr[j - gap];
        j -= gap;
      }
      arr[j] = temp;
    }
  }
}

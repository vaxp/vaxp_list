/// Sorts a list in-place using the Comb Sort algorithm.
///
/// This function sorts the list [arr] using Comb Sort, an improvement over Bubble Sort that eliminates small values near the end.
/// The function works in-place and is efficient for medium-sized lists. The [arr] must contain comparable elements.
///
/// Time Complexity: O(n^2) worst case, O(n log n) best case.
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var arr = [5, 3, 8, 4, 2];
/// combSort(arr);
/// print(arr); // Outputs: [2, 3, 4, 5, 8]
/// ```
void combSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  int gap = n;
  bool swapped = true;
  double shrink = 1.3;
  while (gap > 1 || swapped) {
    gap = (gap ~/ shrink).toInt();
    if (gap < 1) gap = 1;
    swapped = false;
    for (int i = 0; i + gap < n; i++) {
      if (arr[i].compareTo(arr[i + gap]) > 0) {
        final tmp = arr[i];
        arr[i] = arr[i + gap];
        arr[i + gap] = tmp;
        swapped = true;
      }
    }
  }
}

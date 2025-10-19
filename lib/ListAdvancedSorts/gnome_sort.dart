/// Sorts a list in-place using the Gnome Sort algorithm.
///
/// This function sorts the list [arr] using Gnome Sort, a simple comparison-based sorting algorithm similar to insertion sort.
/// It works in-place and is efficient for small or nearly sorted lists. The [arr] must contain comparable elements.
///
/// Time Complexity: O(n^2) worst case, O(n) best case.
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var arr = [5, 3, 2, 4, 1];
/// gnomeSort(arr);
/// print(arr); // Outputs: [1, 2, 3, 4, 5]
/// ```
void gnomeSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  int i = 0;
  while (i < n) {
    if (i == 0 || arr[i - 1].compareTo(arr[i]) <= 0) {
      i++;
    } else {
      final tmp = arr[i];
      arr[i] = arr[i - 1];
      arr[i - 1] = tmp;
      i--;
    }
  }
}

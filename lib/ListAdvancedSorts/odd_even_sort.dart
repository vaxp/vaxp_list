/// Sorts a list in-place using the Odd-Even Sort (Brick Sort) algorithm.
///
/// This function sorts the list [arr] using Odd-Even Sort, also known as Brick Sort, which is a parallelizable sorting algorithm.
/// The function works in-place and is suitable for parallel hardware or educational purposes. The [arr] must contain comparable elements.
///
/// Time Complexity: O(n^2) worst case.
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var arr = [4, 2, 1, 3];
/// oddEvenSort(arr);
/// print(arr); // Outputs: [1, 2, 3, 4]
/// ```
void oddEvenSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  bool sorted = false;
  while (!sorted) {
    sorted = true;
    for (int i = 1; i < n - 1; i += 2) {
      if (arr[i].compareTo(arr[i + 1]) > 0) {
        final tmp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = tmp;
        sorted = false;
      }
    }
    for (int i = 0; i < n - 1; i += 2) {
      if (arr[i].compareTo(arr[i + 1]) > 0) {
        final tmp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = tmp;
        sorted = false;
      }
    }
  }
}

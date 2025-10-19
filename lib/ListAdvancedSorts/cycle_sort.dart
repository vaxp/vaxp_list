/// Sorts a list in-place using the Cycle Sort algorithm (minimizes writes).
///
/// This function sorts the list [arr] using Cycle Sort, which is optimal for minimizing the number of writes to the array.
/// It is useful when write operations are expensive. The [arr] must contain comparable elements.
///
/// Time Complexity: O(n^2)
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var arr = [3, 1, 4, 1, 5, 9, 2];
/// cycleSort(arr);
/// print(arr); // Outputs: [1, 1, 2, 3, 4, 5, 9]
/// ```
void cycleSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  for (int cycleStart = 0; cycleStart < n - 1; cycleStart++) {
    T item = arr[cycleStart];
    int pos = cycleStart;
    for (int i = cycleStart + 1; i < n; i++) {
      if (arr[i].compareTo(item) < 0) pos++;
    }
    if (pos == cycleStart) continue;
    while (item.compareTo(arr[pos]) == 0) {
      pos++;
    }
    if (pos != cycleStart) {
      final tmp = arr[pos];
      arr[pos] = item;
      item = tmp;
    }
    while (pos != cycleStart) {
      pos = cycleStart;
      for (int i = cycleStart + 1; i < n; i++) {
        if (arr[i].compareTo(item) < 0) pos++;
      }
      while (item.compareTo(arr[pos]) == 0) {
        pos++;
      }
      if (item != arr[pos]) {
        final tmp = arr[pos];
        arr[pos] = item;
        item = tmp;
      }
    }
  }
}

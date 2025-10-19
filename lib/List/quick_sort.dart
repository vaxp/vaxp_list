/// 🧠 Quick Sort Algorithm (Generic Version)
///
/// Sorts a list using the quick sort algorithm.
/// This implementation uses recursion and a partition function.
/// Time Complexity:
///   - Average: O(n log n)
///   - Worst: O(n^2)
/// Requires: [T] must extend Comparable
void quickSort<T extends Comparable>(List<T> list, int low, int high) {
  if (low < high) {
    int pi = _partition(list, low, high);

    // Recursively sort left and right sublists
    quickSort<T>(list, low, pi - 1);
    quickSort<T>(list, pi + 1, high);
  }
}

/// Internal helper function to partition the list around a pivot.
/// Places the pivot element at the correct position in sorted list,
/// and places all smaller to left and greater to right of pivot.
int _partition<T extends Comparable>(List<T> list, int low, int high) {
  T pivot = list[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (list[j].compareTo(pivot) <= 0) {
      i++;
      // Swap list[i] and list[j]
      final temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  // Swap list[i + 1] and pivot (list[high])
  final temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;

  return i + 1;
}

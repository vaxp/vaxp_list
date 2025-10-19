/// 🎯 Selection Sort Algorithm (Generic)
///
/// Sorts a list of comparable elements in ascending order using selection sort.
/// Time Complexity: O(n^2)
///
/// Type [T] must implement Comparable.
void selectionSort<T extends Comparable>(List<T> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (list[j].compareTo(list[minIndex]) < 0) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      T temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
}

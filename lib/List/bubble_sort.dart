/// 🫧 Bubble Sort Algorithm (Generic)
///
/// Sorts a list of comparable elements in ascending order using bubble sort.
/// Time Complexity: O(n^2)
///
/// Type [T] must implement Comparable.
void bubbleSort<T extends Comparable>(List<T> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j].compareTo(list[j + 1]) > 0) {
        // Swap elements
        T temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

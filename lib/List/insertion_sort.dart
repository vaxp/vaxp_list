/// 🧩 Insertion Sort Algorithm (Generic)
///
/// Sorts a list of comparable elements in ascending order using insertion sort.
/// Time Complexity: O(n^2) in the worst case.
/// Type [T] must implement Comparable.
void insertionSort<T extends Comparable>(List<T> list) {
  int n = list.length;

  for (int i = 1; i < n; i++) {
    T key = list[i];
    int j = i - 1;

    // Move elements of list[0..i-1], that are greater than key,
    // to one position ahead of their current position
    while (j >= 0 && list[j].compareTo(key) > 0) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = key;
  }
}

/// 🔍 Generic Binary Search Algorithm
///
/// Searches for a target value in a **sorted** list of Comparable elements.
/// Returns the index of the element if found, otherwise returns -1.
///
/// Type [T] must implement Comparable.
library;

int binarySearch<T extends Comparable>(List<T> list, T target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int comparison = list[mid].compareTo(target);

    if (comparison == 0) {
      return mid;
    } else if (comparison < 0) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}

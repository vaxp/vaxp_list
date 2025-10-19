/// Sorts a list in-place using the Bitonic Sort algorithm (for lengths that are powers of 2).
///
/// This function sorts the list [arr] using Bitonic Sort, which is a parallel sorting algorithm suitable for hardware and networks.
/// The list length must be a power of 2. The [ascending] parameter controls the sort order.
///
/// Time Complexity: O(n log^2 n), where n is the length of the list.
/// Space Complexity: O(log n) for recursion stack.
///
/// Example:
/// ```dart
/// var arr = [3, 7, 4, 8, 6, 2, 1, 5];
/// bitonicSort(arr);
/// print(arr); // Outputs: [1, 2, 3, 4, 5, 6, 7, 8]
/// ```
void bitonicSort<T extends Comparable>(List<T> arr, {bool ascending = true}) {
  void bitonicMerge(int low, int cnt, bool dir) {
    if (cnt > 1) {
      int k = cnt ~/ 2;
      for (int i = low; i < low + k; i++) {
        if ((dir && arr[i].compareTo(arr[i + k]) > 0) ||
            (!dir && arr[i].compareTo(arr[i + k]) < 0)) {
          final tmp = arr[i];
          arr[i] = arr[i + k];
          arr[i + k] = tmp;
        }
      }
      bitonicMerge(low, k, dir);
      bitonicMerge(low + k, k, dir);
    }
  }

  void bitonicSortRec(int low, int cnt, bool dir) {
    if (cnt > 1) {
      int k = cnt ~/ 2;
      bitonicSortRec(low, k, true);
      bitonicSortRec(low + k, k, false);
      bitonicMerge(low, cnt, dir);
    }
  }

  bitonicSortRec(0, arr.length, ascending);
}

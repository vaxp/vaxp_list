/// merge_sort.dart
library;

/// 🧠 Merge Sort Algorithm
///
/// Sorts the input [list] using the Merge Sort algorithm, which is based on the divide-and-conquer paradigm.
/// Merge Sort recursively divides the list into halves, sorts each half, and then merges the sorted halves.
///
/// Usage:
/// ```dart
/// var arr = [38, 27, 43, 3, 9, 82, 10];
/// var sorted = mergeSort(arr); // [3, 9, 10, 27, 38, 43, 82]
/// ```
///
/// - Time Complexity: O(n log n) for all cases
/// - Space Complexity: O(n) (not in-place)
/// - Stable sort
List<T> mergeSort<T extends Comparable>(List<T> list) {
  if (list.length <= 1) return list;

  int mid = list.length ~/ 2;
  var left = mergeSort(list.sublist(0, mid));
  var right = mergeSort(list.sublist(mid));

  return _merge(left, right);
}

/// 🔗 Merges two sorted lists [left] and [right] into a single sorted list.
/// Used internally by [mergeSort].
List<T> _merge<T extends Comparable>(List<T> left, List<T> right) {
  final result = <T>[];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i].compareTo(right[j]) <= 0) {
      result.add(left[i++]);
    } else {
      result.add(right[j++]);
    }
  }

  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));
  return result;
}

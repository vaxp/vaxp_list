/// 🧮 Counting Sort Algorithm (for non-negative integers only)
///
/// Sorts a list of non-negative integers using the counting sort technique.
/// This algorithm is not comparison-based and has linear time complexity
/// for a small range of integers.
///
/// Time Complexity:
///   - Best, Average, Worst: O(n + k)
///     where `n` is the number of elements, and `k` is the range of values.
///
/// Restrictions:
///   - Only works for integers ≥ 0
List<int> countingSort(List<int> list) {
  if (list.isEmpty) return [];

  // Find the maximum value in the list to determine range
  int max = list.reduce((a, b) => a > b ? a : b);

  // Initialize count array
  List<int> count = List.filled(max + 1, 0);

  // Count occurrences of each element
  for (int number in list) {
    if (number < 0) {
      throw ArgumentError("Counting sort only supports non-negative integers.");
    }
    count[number]++;
  }

  // Reconstruct sorted list based on counts
  List<int> sorted = [];
  for (int i = 0; i < count.length; i++) {
    for (int j = 0; j < count[i]; j++) {
      sorted.add(i);
    }
  }

  return sorted;
}

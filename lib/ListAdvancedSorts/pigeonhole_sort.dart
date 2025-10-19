/// Sorts a list of integers in-place using the Pigeonhole Sort algorithm.
///
/// This function sorts the list [arr] using Pigeonhole Sort, which is efficient when the range of input values is not much larger than the list size.
/// The function works in-place and is suitable for integer lists with a small range.
///
/// Time Complexity: O(n + Range), where n is the number of elements and Range is the difference between max and min values.
/// Space Complexity: O(Range)
///
/// Example:
/// ```dart
/// var arr = [8, 3, 2, 7, 4, 6, 8];
/// pigeonholeSort(arr);
/// print(arr); // Outputs: [2, 3, 4, 6, 7, 8, 8]
/// ```
void pigeonholeSort(List<int> arr) {
  if (arr.isEmpty) return;
  int minVal = arr.reduce((a, b) => a < b ? a : b);
  int maxVal = arr.reduce((a, b) => a > b ? a : b);
  int size = maxVal - minVal + 1;
  final holes = List<List<int>>.generate(size, (_) => []);
  for (final num in arr) {
    holes[num - minVal].add(num);
  }
  int idx = 0;
  for (final hole in holes) {
    for (final num in hole) {
      arr[idx++] = num;
    }
  }
}

/// Sorts a list of non-negative doubles using the Bucket Sort algorithm.
///
/// This function sorts the list [arr] using bucket sort, which is efficient for uniformly distributed data.
/// The input must be a list of non-negative doubles. The function modifies the list in-place.
///
/// Time Complexity: O(n + k), where n is the number of elements and k is the number of buckets (best/average case).
/// Space Complexity: O(n + k)
///
/// Example:
/// ```dart
/// var arr = [0.42, 4.21, 3.14, 2.71, 1.61, 0.99];
/// bucketSort(arr);
/// print(arr); // Outputs: [0.42, 0.99, 1.61, 2.71, 3.14, 4.21]
/// ```
void bucketSort(List<double> arr) {
  if (arr.isEmpty) return;
  final n = arr.length;
  final minValue = arr.reduce((a, b) => a < b ? a : b);
  final maxValue = arr.reduce((a, b) => a > b ? a : b);
  final bucketCount = n;
  final buckets = List.generate(bucketCount, (_) => <double>[]);
  final range = (maxValue - minValue) / bucketCount;
  for (final value in arr) {
    int idx = ((value - minValue) / (range == 0 ? 1 : range)).floor();
    if (idx == bucketCount) idx--;
    buckets[idx].add(value);
  }
  int k = 0;
  for (final bucket in buckets) {
    bucket.sort();
    for (final value in bucket) {
      arr[k++] = value;
    }
  }
}

/// 📊 Computes the average of all contiguous subarrays of size [k] in a list of numbers.
///
/// Returns a list of averages as doubles. Throws if the list is shorter than k.
///
/// Example:
/// ```dart
/// averageOfSubarraysOfSizeK([1, 2, 3, 4, 5], 3); // returns [2.0, 3.0, 4.0]
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)
List<double> averageOfSubarraysOfSizeK<T extends num>(List<T> list, int k) {
  if (list.length < k) {
    throw Exception("❌ Cannot calculate averages. The list is shorter than k.");
  }
  List<double> averages = [];
  num windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += list[i];
  }
  averages.add(windowSum / k);
  for (int end = k; end < list.length; end++) {
    windowSum += list[end] - list[end - k];
    averages.add(windowSum / k);
  }
  return averages;
}

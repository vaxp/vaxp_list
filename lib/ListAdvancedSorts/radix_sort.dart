/// 🧮 Radix Sort (Least Significant Digit)
///
/// Sorts the list [arr] of non-negative integers using the LSD Radix Sort algorithm.
/// Radix Sort processes each digit of the numbers, starting from the least significant digit,
/// and sorts the array in O(nk) time, where n is the number of elements and k is the number of digits.
///
/// Usage:
/// ```dart
/// var arr = [170, 45, 75, 90, 802, 24, 2, 66];
/// radixSort(arr); // arr is now [2, 24, 45, 66, 75, 90, 170, 802]
/// ```
///
/// - Time Complexity: O(nk), where k is the number of digits in the largest number
/// - Space Complexity: O(n + k)
/// - Only works for non-negative integers
void radixSort(List<int> arr) {
  if (arr.isEmpty) return;
  int maxNum = arr.reduce((a, b) => a > b ? a : b);
  for (int exp = 1; maxNum ~/ exp > 0; exp *= 10) {
    final output = List<int>.filled(arr.length, 0);
    final count = List<int>.filled(10, 0);
    for (final num in arr) {
      count[(num ~/ exp) % 10]++;
    }
    for (int i = 1; i < 10; i++) {
      count[i] += count[i - 1];
    }
    for (int i = arr.length - 1; i >= 0; i--) {
      int idx = (arr[i] ~/ exp) % 10;
      output[count[idx] - 1] = arr[i];
      count[idx]--;
    }
    for (int i = 0; i < arr.length; i++) {
      arr[i] = output[i];
    }
  }
}

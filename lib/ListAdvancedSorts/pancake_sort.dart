/// Sorts a list in-place using the Pancake Sort algorithm.
///
/// This function sorts the list [arr] using Pancake Sort, a comparison-based sorting algorithm that repeatedly flips subarrays.
/// The function works in-place and is mainly of theoretical and educational interest. The [arr] must contain comparable elements.
///
/// Time Complexity: O(n^2)
/// Space Complexity: O(1)
///
/// Example:
/// ```dart
/// var arr = [3, 6, 1, 5, 2, 4];
/// pancakeSort(arr);
/// print(arr); // Outputs: [1, 2, 3, 4, 5, 6]
/// ```
void pancakeSort<T extends Comparable>(List<T> arr) {
  int n = arr.length;
  void flip(int k) {
    int i = 0, j = k;
    while (i < j) {
      final tmp = arr[i];
      arr[i] = arr[j];
      arr[j] = tmp;
      i++;
      j--;
    }
  }

  for (int currSize = n; currSize > 1; currSize--) {
    int maxIdx = 0;
    for (int i = 1; i < currSize; i++) {
      if (arr[i].compareTo(arr[maxIdx]) > 0) maxIdx = i;
    }
    if (maxIdx != currSize - 1) {
      flip(maxIdx);
      flip(currSize - 1);
    }
  }
}

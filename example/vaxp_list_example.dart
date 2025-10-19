import 'package:vaxp_list/vaxp_list.dart';

void main() {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');

  // =========================
  // List Algorithms
  // =========================
  final numbers = <int>[1, 3, 5, 7, 9, 11, 13];
  final index = binarySearch<int>(numbers, 7);
  print('Binary Search: 7 at index -> $index');

  final unsorted = <int>[4, 2, 5, 1, 3];
  bubbleSort(unsorted);
  print('Bubble Sort: $unsorted');

  final listForQuick = <int>[10, 7, 8, 9, 1, 5];
  quickSort<int>(listForQuick, 0, listForQuick.length - 1);
  print('Quick Sort: $listForQuick');

  final mergeSorted = mergeSort<int>([5, 2, 4, 6, 1, 3]);
  print('Merge Sort: $mergeSorted');

  final inserted = <int>[5, 2, 9, 1, 5, 6];
  insertionSort(inserted);
  print('Insertion Sort: $inserted');

  final selected = <int>[64, 25, 12, 22, 11];
  selectionSort(selected);
  print('Selection Sort: $selected');

  final counted = countingSort([4, 2, 2, 8, 3, 3, 1]);
  print('Counting Sort: $counted');

  final idx = linearSearch([10, 20, 30, 40], 30);
  print('Linear Search: 30 at index -> $idx');

  final toReverse = [1, 2, 3, 4];
  reverseList(toReverse);
  print('Reverse List: $toReverse');

  print('Find Max: ${findMax([3, 1, 4, 1, 5])}');
  print('Find Min: ${findMin([3, 1, 4, 1, 5])}');

  print('Find Duplicates: ${findDuplicates([1, 2, 2, 3, 3, 3])}');

  print(
    'Kadane\'s Max Subarray Sum: ${kadanesAlgorithm([-2.0, 1.0, -3.0, 4.0, -1.0, 2.0, 1.0, -5.0, 4.0])}',
  );

  print(
    'Max Sum (k=3): ${maxSumSubarrayOfSizeK([2.0, 1.0, 5.0, 1.0, 3.0, 2.0], 3)}',
  );
  print(
    'Min Sum (k=3): ${minSumSubarrayOfSizeK([4, 2, 1, 7, 8, 1, 2, 8, 1, 0], 3)}',
  );

  print(
    'Average of size k=5: ${averageOfSubarraysOfSizeK([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)}',
  );

  print(
    'Two Sum Sorted (target 10): ${twoSumSorted([1, 2, 3, 4, 6, 8, 11, 15], 10)}',
  );
  print('Remove Duplicates: ${removeDuplicates([1, 2, 2, 3, 3, 4])}');
  print('Rotate Right by 2: ${rotateArrayRight([1, 2, 3, 4, 5], 2)}');

  final prefix = computePrefixSum([2, 4, 1, 3, 6]);
  print('Prefix Sum: $prefix, range(1..3): ${rangeSum(prefix, 1, 3)}');

  // 🥔 Heap Sort
  var arr1 = [4, 10, 3, 5, 1];
  heapSort(arr1);
  print('Heap Sort: $arr1');

  // 🐚 Shell Sort
  var arr2 = [12, 34, 54, 2, 3];
  shellSort(arr2);
  print('Shell Sort: $arr2');

  // 🦩 Gnome Sort
  var arr3 = [34, 2, 10, -9];
  gnomeSort(arr3);
  print('Gnome Sort: $arr3');

  // 🟣 Odd-Even Sort
  var arr4 = [5, 3, 2, 4, 1];
  oddEvenSort(arr4);
  print('Odd-Even Sort: $arr4');

  // 🥞 Pancake Sort
  var arr5 = [3, 6, 1, 10, 2];
  pancakeSort(arr5);
  print('Pancake Sort: $arr5');

  // 🔄 Cycle Sort
  var arr6 = [20, 40, 50, 10, 30];
  cycleSort(arr6);
  print('Cycle Sort: $arr6');

  // 🪣 Bucket Sort
  var arr7 = [0.42, 4.21, 3.14, 2.71, 1.61, 0.99];
  bucketSort(arr7);
  print('Bucket Sort: $arr7');

  // 🧮 Radix Sort
  var arr8 = [170, 45, 75, 90, 802, 24, 2, 66];
  radixSort(arr8);
  print('Radix Sort: $arr8');

  // 🕳️ Pigeonhole Sort
  var arr9 = [8, 3, 2, 7, 4, 6, 8];
  pigeonholeSort(arr9);
  print('Pigeonhole Sort: $arr9');

  // 🔀 Bitonic Sort
  var arr10 = [3, 7, 4, 8];
  bitonicSort(arr10, ascending: true);
  print('Bitonic Sort: $arr10');

  // 🐓 Comb Sort
  var arr11 = [8, 4, 1, 56, 3, -44, 23, -6, 28, 0];
  combSort(arr11);
  print('Comb Sort: $arr11');

  // 🧙 Stooge Sort
  var arr12 = [2, 4, 5, 3, 1];
  stoogeSort(arr12);
  print('Stooge Sort: $arr12');

  // ⚡ Quickselect
  var arr13 = [7, 10, 4, 3, 20, 15];
  print('Quickselect (2nd smallest): ${quickselect(List<int>.from(arr13), 2)}');

  // 📈 LIS (O(n log n))
  print('LIS Binary Search: ${lisBinarySearch([10, 9, 2, 5, 3, 7, 101, 18])}');

  // 💹 Maximum Product Subarray
  print('Max Product Subarray: ${maxProductSubarray([2.0, 3.0, -2.0, 4.0])}');
}

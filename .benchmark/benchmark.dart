// bin/benchmark.dart

import 'dart:math';
import 'package:vaxp_list/vaxp_list.dart';

/// A simple helper function to generate a list of random integers.
List<int> generateRandomList(int size) {
  final random = Random();
  // Generate numbers between 0 and size * 2 to ensure some duplicates and variance.
  return List.generate(size, (_) => random.nextInt(size * 2));
}

/// A generic function to run and time an operation.
void runBenchmark(String name, int size, void Function() operation) {
  final stopwatch = Stopwatch()..start();
  operation();
  stopwatch.stop();
  // Pad the name for clean alignment in the output table.
  print('${name.padRight(28)}| ${size.toString().padLeft(9)} | ${stopwatch.elapsedMilliseconds.toString().padLeft(10)} ms');
}

void main() {
  print('🚀 Starting vaxp List Algorithms Benchmark...');
  
  final sizes = [1000, 10000, 100000];

  print('=' * 60);
  print('Algorithm Name              | List Size |       Time (ms)');
  print('-' * 60);

  for (final size in sizes) {
    // Generate a new list for each size iteration.
    final List<int> unsortedList = generateRandomList(size);
    final List<int> sortedList = List<int>.from(unsortedList)..sort();
    final int target = sortedList[size ~/ 2]; // A value we know exists.

    // --- Sorting Algorithms ---
    // For sorting, we pass a typed copy of the list to keep the original intact.
    runBenchmark('Bubble Sort', size, () => bubbleSort(List<int>.from(unsortedList)));
    runBenchmark('Insertion Sort', size, () => insertionSort(List<int>.from(unsortedList)));
    runBenchmark('Selection Sort', size, () => selectionSort(List<int>.from(unsortedList)));
    runBenchmark('Gnome Sort', size, () => gnomeSort(List<int>.from(unsortedList)));
    runBenchmark('Odd-Even Sort', size, () => oddEvenSort(List<int>.from(unsortedList)));
    runBenchmark('Pancake Sort', size, () => pancakeSort(List<int>.from(unsortedList)));
    runBenchmark('Cycle Sort', size, () => cycleSort(List<int>.from(unsortedList)));
    runBenchmark('Comb Sort', size, () => combSort(List<int>.from(unsortedList)));
    runBenchmark('Stooge Sort (slow!)', size, () => stoogeSort(List<int>.from(unsortedList)));
    runBenchmark('Quick Sort', size, () => quickSort(List<int>.from(unsortedList), 0, size - 1));
    runBenchmark('Merge Sort', size, () => mergeSort(List<int>.from(unsortedList)));
    runBenchmark('Heap Sort', size, () => heapSort(List<int>.from(unsortedList)));
    runBenchmark('Shell Sort', size, () => shellSort(List<int>.from(unsortedList)));
    runBenchmark('Counting Sort', size, () => countingSort(List<int>.from(unsortedList)));
    runBenchmark('Radix Sort', size, () => radixSort(List<int>.from(unsortedList)));
    runBenchmark('Pigeonhole Sort', size, () => pigeonholeSort(List<int>.from(unsortedList)));
    runBenchmark('Bitonic Sort', size, () => bitonicSort(List<int>.from(unsortedList)));

    // --- Searching Algorithms ---
    runBenchmark('Linear Search', size, () => linearSearch(unsortedList, target));
    runBenchmark('Binary Search', size, () => binarySearch(sortedList, target));

    // --- Other List Operations ---
    runBenchmark('Find Max', size, () => findMax(unsortedList));
    runBenchmark('Find Min', size, () => findMin(unsortedList));
    runBenchmark('Reverse List', size, () => reverseList(List<int>.from(unsortedList)));
    runBenchmark('Find Duplicates', size, () => findDuplicates(unsortedList));
    runBenchmark('Remove Duplicates', size, () => removeDuplicates(sortedList));
    runBenchmark('Rotate Array Right', size, () => rotateArrayRight(List<int>.from(unsortedList), 5));
    runBenchmark('Quickselect (k=size/2)', size, () => quickselect(List<int>.from(unsortedList), size ~/ 2));
    
    // --- Subarray Algorithms ---
    final List<double> doubleList = unsortedList.map((i) => i.toDouble()).toList();
    runBenchmark('Kadane\'s Algorithm', size, () => kadanesAlgorithm(doubleList));
    runBenchmark('Max Product Subarray', size, () => maxProductSubarray(doubleList));
    runBenchmark('Max Sum (k=10)', size, () => maxSumSubarrayOfSizeK(doubleList, 10));
    runBenchmark('Min Sum (k=10)', size, () => minSumSubarrayOfSizeK(unsortedList, 10));
    runBenchmark('Average (k=10)', size, () => averageOfSubarraysOfSizeK(unsortedList, 10));
    runBenchmark('LIS Binary Search', size, () => lisBinarySearch(unsortedList));
    runBenchmark('Two Sum Sorted', size, () => twoSumSorted(sortedList, sortedList[0] + sortedList[1]));
    runBenchmark('Prefix Sum Calculation', size, () => computePrefixSum(unsortedList));
    
    print('-' * 60);
  }

  print('✅ Benchmark complete.');
}
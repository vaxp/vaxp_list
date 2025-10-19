# benchmark

# vaxp List Algorithms Benchmark 🚀

This document provides performance benchmarks for the algorithms included in the **vaxp_list** library. The goal is to offer clear, transparent data on how each algorithm performs on various data sizes.

---

## How to Run the Benchmark 🧑‍💻

Any developer can replicate these results on their own machine to verify performance.

1. **Clone the Repository**Bash
    
    `git clone https://github.com/vaxp/vaxp_list.git`
    
2. **Navigate to the Project Directory**Bash
    
    `cd vaxp_list`
    
3. **Run the Benchmark Script**
The project includes a dedicated script to test all algorithms. Run the following command from the project's root directory:Bash
    
    `dart run .benchmark/benchmark.dart`
    

The script will run tests on lists of 1,000, 10,000, and 100,000 elements and print the results to the console.

---

## Benchmark Results 📊

*Results below were generated on a standard development machine and are intended as a reference. Your exact results may vary depending on your hardware.*

### **List Size: 1,000 Elements**

| Algorithm | List Size | Time (ms) |
| --- | --- | --- |
| Bubble Sort | 1,000 | 11 ms  |
| Insertion Sort | 1,000 | 5 ms  |
| Selection Sort | 1,000 | 7 ms  |
| Gnome Sort | 1,000 | 9 ms  |
| Odd-Even Sort | 1,000 | 11 ms  |
| Pancake Sort | 1,000 | 10 ms  |
| Cycle Sort | 1,000 | 20 ms  |
| Comb Sort | 1,000 | 2 ms  |
| Stooge Sort (slow!) | 1,000 | 1241 ms  |
| Quick Sort | 1,000 | 1 ms  |
| Merge Sort | 1,000 | 5 ms  |
| Heap Sort | 1,000 | 1 ms  |
| Shell Sort | 1,000 | 2 ms  |
| Counting Sort | 1,000 | 1 ms  |
| Radix Sort | 1,000 | 4 ms  |
| Pigeonhole Sort | 1,000 | 1 ms  |
| Bitonic Sort | 1,000 | 2 ms  |
| Linear Search | 1,000 | 0 ms  |
| Binary Search | 1,000 | 0 ms  |
| Find Max | 1,000 | 0 ms  |
| Find Min | 1,000 | 0 ms  |
| Reverse List | 1,000 | 0 ms  |
| Find Duplicates | 1,000 | 2 ms  |
| Remove Duplicates | 1,000 | 2 ms  |
| Rotate Array Right | 1,000 | 0 ms  |
| Quickselect (k=size/2) | 1,000 | 0 ms  |
| Kadane's Algorithm | 1,000 | 0 ms  |
| Max Product Subarray | 1,000 | 2 ms  |
| Max Sum (k=10) | 1,000 | 0 ms  |
| Min Sum (k=10) | 1,000 | 0 ms  |
| Average (k=10) | 1,000 | 0 ms  |
| LIS Binary Search | 1,000 | 0 ms  |
| Two Sum Sorted | 1,000 | 0 ms  |
| Prefix Sum Calculation | 1,000 | 0 ms  |

### **List Size: 10,000 Elements**

| Algorithm | List Size | Time (ms) |
| --- | --- | --- |
| Bubble Sort | 10,000 | 938 ms  |
| Insertion Sort | 10,000 | 258 ms  |
| Selection Sort | 10,000 | 412 ms  |
| Gnome Sort | 10,000 | 559 ms  |
| Odd-Even Sort | 10,000 | 631 ms  |
| Pancake Sort | 10,000 | 645 ms  |
| Cycle Sort | 10,000 | 1312 ms  |
| Comb Sort | 10,000 | 5 ms  |

---

### **Analysis of Results**

The results clearly demonstrate the practical impact of algorithmic complexity (Big O notation).

- **O(n²)** algorithms like `Bubble Sort` and `Cycle Sort` show a dramatic decrease in performance as the input size grows by a factor of 10.
- **O(n log n)** algorithms like `Comb Sort` maintain excellent performance, showcasing their suitability for larger datasets.
- **O(n)** algorithms remain extremely fast across the board.
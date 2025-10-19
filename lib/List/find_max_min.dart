/// 📌 Finds the maximum value in a list of comparable elements.
///
/// Throws an [Exception] if the list is empty.
///
/// Time Complexity: O(n)
T findMax<T extends Comparable<T>>(List<T> list) {
  if (list.isEmpty) {
    throw Exception("Cannot find maximum in an empty list.");
  }

  T max = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i].compareTo(max) > 0) {
      max = list[i];
    }
  }

  return max;
}

/// 📌 Finds the minimum value in a list of comparable elements.
///
/// Throws an [Exception] if the list is empty.
///
/// Time Complexity: O(n)
T findMin<T extends Comparable<T>>(List<T> list) {
  if (list.isEmpty) {
    throw Exception("Cannot find minimum in an empty list.");
  }

  T min = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i].compareTo(min) < 0) {
      min = list[i];
    }
  }

  return min;
}

/// 🔁 Reverse List (In-place)
///
/// Reverses the elements of the list in-place without creating a new list.
///
/// This algorithm modifies the input list by swapping elements
/// from the beginning and end.
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
///
/// Works with any list of type `T`.
void reverseList<T>(List<T> list) {
  int start = 0;
  int end = list.length - 1;

  while (start < end) {
    T temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
  }
}

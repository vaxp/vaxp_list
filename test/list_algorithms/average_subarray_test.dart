import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  test('averageOfSubarraysOfSizeK returns correct averages', () {
    final list = [1, 3, 2, 6, -1, 4, 1, 8, 2];
    final k = 5;

    // ✅ القيم المصححة:
    final expected = [2.2, 2.8, 2.4, 3.6, 2.8];

    final result = averageOfSubarraysOfSizeK(list, k);

    expect(result, equals(expected));
  });
}

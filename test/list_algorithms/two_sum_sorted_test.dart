import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('twoSumSorted', () {
    test('Finds correct int pair', () {
      final result = twoSumSorted<int>([1, 2, 3, 4, 6, 8, 11, 15], 10);
      expect(result, equals([2, 8]));
    });

    test('Finds correct double pair', () {
      final result = twoSumSorted<double>([1.0, 2.0, 3.5, 4.5, 6.5], 8.0);
      expect(result, equals([3.5, 4.5]));
    });

    test('Returns null when no pair matches', () {
      final result = twoSumSorted<int>([1, 2, 3, 9], 20);
      expect(result, isNull);
    });
  });
}

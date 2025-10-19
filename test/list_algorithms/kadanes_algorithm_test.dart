import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Kadane\'s Algorithm', () {
    test('Standard case with mixed numbers', () {
      final result = kadanesAlgorithm([
        -2.0,
        1.0,
        -3.0,
        4.0,
        -1.0,
        2.0,
        1.0,
        -5.0,
        4.0,
      ]);
      expect(result, equals(6.0));
    });

    test('All negative numbers', () {
      final result = kadanesAlgorithm([-8.0, -3.0, -6.0, -2.0, -5.0, -4.0]);
      expect(result, equals(-2.0));
    });

    test('All positive numbers', () {
      final result = kadanesAlgorithm([1.0, 2.0, 3.0, 4.0]);
      expect(result, equals(10.0));
    });

    test('Single element list', () {
      final result = kadanesAlgorithm([-10.0]);
      expect(result, equals(-10.0));
    });

    test('Throws on empty list', () {
      expect(() => kadanesAlgorithm(<num>[]), throwsArgumentError);
    });

    test('Floating point precision', () {
      final result = kadanesAlgorithm([-1.2, 0.5, 1.8, -0.3, 2.1]);
      expect(result, closeTo(4.1, 0.0001));
    });
  });
}

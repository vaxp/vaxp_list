import 'package:vaxp_list/vaxp_list.dart';
import 'package:test/test.dart';

void main() {
  group('Linear Search Tests', () {
    test('Finds element at correct index', () {
      expect(linearSearch([10, 20, 30, 40, 50], 30), equals(2));
    });

    test('Returns -1 if element is not found', () {
      expect(linearSearch([1, 2, 3, 4], 5), equals(-1));
    });

    test('Works with single-element list', () {
      expect(linearSearch([99], 99), equals(0));
      expect(linearSearch([99], 100), equals(-1));
    });

    test('Works with empty list', () {
      expect(linearSearch([], 10), equals(-1));
    });
  });
}

import 'package:tdd_money/dollar.dart';
import 'package:test/test.dart';

void main() {
  group('Dollar', () {
    test('can multiply a number', () {
      final five = Dollar(5);
      final result = five.times(2);
      expect(result.amount, equals(10));
      final result2 = five.times(3);
      expect(result2.amount, equals(15));
    });
  });
}

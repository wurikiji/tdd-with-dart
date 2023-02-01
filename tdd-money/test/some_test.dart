import 'package:tdd_money/dollar.dart';
import 'package:test/test.dart';

void main() {
  group('Dollar', () {
    test('can multiply a number', () {
      final five = Dollar(5);
      five.times(2);
      expect(five.amount, equals(10));
    });
  });
}

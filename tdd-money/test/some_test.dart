import 'package:tdd_money/dollar.dart';
import 'package:test/test.dart';

void main() {
  group('Dollar', () {
    test('can multiply a number', () {
      final five = Dollar(5);
      expect(five.times(2), equals(Dollar(10)));
      expect(five.times(3), equals(Dollar(15)));
    });

    test('should be same with same amount', () {
      expect(Dollar(5), equals(Dollar(5)));
      expect(Dollar(6), isNot(equals(Dollar(5))));
    });
  });
}

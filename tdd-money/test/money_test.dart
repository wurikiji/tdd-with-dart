import 'package:tdd_money/dollar.dart';
import 'package:tdd_money/franc.dart';
import 'package:tdd_money/money.dart';
import 'package:test/test.dart';

void main() {
  group('Money', () {
    test("Franc and Dollar shouldn't be equal", () {
      expect(Franc(5), isNot(equals(Dollar(5))));
      expect(Dollar(5), isNot(equals(Franc(5))));
    });

    test("can create dollar and multiply", () {
      final Money five = Money.dollar(5);
      expect(five.times(2), Money.dollar(10));
      expect(five.times(3), Money.dollar(15));
    });

    test("can create franc and multiply", () {
      final Money five = Money.franc(5);
      expect(five.times(2), Money.franc(10));
      expect(five.times(3), Money.franc(15));
    });

    test("has currency", () {
      expect(Money.dollar(1).currency(), equals("USD"));
      expect(Money.franc(1).currency(), equals("CHF"));
    });
  });
}

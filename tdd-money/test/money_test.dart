import 'package:tdd_money/money.dart';
import 'package:test/test.dart';

void main() {
  group('Money', () {
    test("Franc and Dollar shouldn't be equal", () {
      expect(Money.franc(5), isNot(equals(Money.dollar(5))));
      expect(Money.dollar(5), isNot(equals(Money.franc(5))));
    });

    test('properly compares Money objects', () {
      expect(Money.franc(5), Money.franc(5));
      expect(Money.franc(5), isNot(Money.franc(6)));
      expect(Money.dollar(5), Money.dollar(5));
      expect(Money.dollar(5), isNot(Money.dollar(6)));
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

    test("equals with same currency", () {
      expect(Money(5, "CHF"), Money.franc(5));
      expect(Money(5, "USD"), Money.dollar(5));
    });
  });

  group('Money interoperability', () {
    test('simple addition', () {
      final sum = Money.dollar(5).plus(Money.dollar(5));
      expect(sum, Money.dollar(10));
    });
  });
}

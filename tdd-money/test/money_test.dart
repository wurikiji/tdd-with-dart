import 'package:tdd_money/bank.dart';
import 'package:tdd_money/expression.dart';
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
      final five = Money.dollar(5);
      final Expression result = five.plus(five);
      final Sum sum = result as Sum;
      final bank = Bank();
      final Money reduced = bank.reduce(sum, "USD");
      expect(reduced, Money.dollar(10));
    });

    test('reduce sum', () {
      final sum = Sum(Money.dollar(3), Money.dollar(4));
      final bank = Bank();
      final result = bank.reduce(sum, 'USD');
      expect(result, Money.dollar(7));
    });

    test('reduce money', () {
      final bank = Bank();
      final result = bank.reduce(Money.dollar(1), 'USD');
      expect(result, Money.dollar(1));
    });

    test('reduce money different currency', () {
      final bank = Bank();
      bank.addRate("CHF", "USD", 2);
      final result = bank.reduce(Money.franc(2), 'USD');
      expect(result, Money.dollar(1));
    });

    test('identity rate', () {
      expect(Bank().rate("USD", "USD"), 1);
      expect(Bank().rate("CHF", "CHF"), 1);
    });

    test('mixed addition', () {
      final Expression fiveBucks = Money.dollar(5);
      final Expression tenFrancs = Money.franc(10);
      final bank = Bank();
      bank.addRate("CHF", "USD", 2);
      final result = bank.reduce(fiveBucks.plus(tenFrancs), "USD");
      expect(result, Money.dollar(10));
    });
  });
  group('Pair', () {
    test('equals', () {
      expect(Pair("CHF", "USD"), equals(Pair("CHF", "USD")));
      expect(Pair("USD", "USD"), equals(Pair("USD", "USD")));
      expect(Pair("USD", "CHF"), equals(Pair("USD", "CHF")));
      expect(Pair("USD", "CHF"), isNot(equals(Pair("CHF", "USD"))));
    });
  });
}

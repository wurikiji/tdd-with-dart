import 'package:tdd_money/bank.dart';
import 'package:tdd_money/expression.dart';

class Money extends Expression {
  const Money(this.amount, this._currency);
  final int amount;
  final String _currency;

  factory Money.dollar(int amount) => Money(amount, "USD");
  factory Money.franc(int amount) => Money(amount, "CHF");

  @override
  Expression times(int multiplier) {
    return Money(amount * multiplier, currency());
  }

  @override
  Expression plus(Expression addend) {
    if (addend is Money && addend.currency() == currency()) {
      return Money(amount + addend.amount, currency());
    }
    return Sum(this, addend);
  }

  @override
  Money reduce(Bank bank, String to) {
    final rate = bank.rate(currency(), to);
    return Money(amount ~/ rate, to);
  }

  String currency() => _currency;

  @override
  bool operator ==(Object? other) {
    return other is Money &&
        _currency == other._currency &&
        other.amount == amount;
  }

  @override
  String toString() => '$amount $_currency';
}

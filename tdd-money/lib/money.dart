import 'package:tdd_money/expression.dart';

class Money extends Expression {
  const Money(this.amount, this._currency);
  final int amount;
  final String _currency;

  factory Money.dollar(int amount) => Money(amount, "USD");
  factory Money.franc(int amount) => Money(amount, "CHF");

  Money times(int multiplier) {
    return Money(amount * multiplier, currency());
  }

  Expression plus(Money addend) {
    return Sum(this, addend);
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

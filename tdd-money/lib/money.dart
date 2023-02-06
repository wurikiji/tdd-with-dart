import 'package:meta/meta.dart';
import 'package:tdd_money/dollar.dart';
import 'package:tdd_money/franc.dart';

class Money {
  const Money(this.amount, this._currency);
  @protected
  final int amount;
  final String _currency;

  factory Money.dollar(int amount) => Dollar(amount, "USD");
  factory Money.franc(int amount) => Franc(amount, "CHF");

  Money times(int multiplier) {
    return Money(amount * multiplier, currency());
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

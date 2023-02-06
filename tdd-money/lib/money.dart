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

  Money times(int multiplier) => this;

  String currency() => _currency;

  @override
  bool operator ==(Object? other) {
    return runtimeType == other.runtimeType &&
        other is Money &&
        other.amount == amount;
  }

  @override
  String toString() {
    return '$amount $_currency';
  }
}

import 'package:meta/meta.dart';
import 'package:tdd_money/dollar.dart';
import 'package:tdd_money/franc.dart';

abstract class Money {
  const Money(this.amount);
  @protected
  final int amount;

  factory Money.dollar(int amount) => Dollar(amount);
  factory Money.franc(int amount) => Franc(amount);

  Money times(int multiplier);

  @override
  bool operator ==(Object? other) {
    return runtimeType == other.runtimeType &&
        other is Money &&
        other.amount == amount;
  }
}

import 'package:meta/meta.dart';
import 'package:tdd_money/dollar.dart';

abstract class Money {
  const Money(this.amount);
  @protected
  final int amount;

  factory Money.dollar(int amount) => Dollar(amount);

  Money times(int mupltiplier);

  @override
  bool operator ==(Object? other) {
    return runtimeType == other.runtimeType &&
        other is Money &&
        other.amount == amount;
  }
}

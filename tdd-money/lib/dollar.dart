import 'package:tdd_money/money.dart';

class Dollar extends Money {
  const Dollar(super.amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  @override
  bool operator ==(Object? other) {
    if (identical(this, other)) return true;
    return other is Money && other.amount == amount;
  }
}

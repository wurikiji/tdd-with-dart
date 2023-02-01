import 'package:tdd_money/money.dart';

class Franc extends Money {
  const Franc(super.amount);

  Franc times(int multiplier) {
    return Franc(amount * multiplier);
  }
}

import 'package:tdd_money/money.dart';

class Franc extends Money {
  const Franc(super.amount);

  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}

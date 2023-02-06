import 'package:tdd_money/money.dart';

class Franc extends Money {
  const Franc(super.amount);

  @override
  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}

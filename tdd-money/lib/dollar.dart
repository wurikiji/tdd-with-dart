import 'package:tdd_money/money.dart';

class Dollar extends Money {
  const Dollar(super.amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}

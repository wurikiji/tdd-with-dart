import 'package:tdd_money/money.dart';

class Franc extends Money {
  const Franc(super.amount, [super._currency = "CHF"]);

  @override
  Money times(int multiplier) {
    return Money(amount * multiplier, "CHF");
  }
}

import 'package:tdd_money/money.dart';

class Dollar extends Money {
  const Dollar(super.amount, [super._currency = "USD"]);

  @override
  Money times(int multiplier) {
    return Money(amount * multiplier, currency());
  }
}

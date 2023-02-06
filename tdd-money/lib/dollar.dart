import 'package:tdd_money/money.dart';

class Dollar extends Money {
  Dollar(super.amount) {
    _currency = "USD";
  }
  late final _currency;

  @override
  Money times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  @override
  String currency() => _currency;
}

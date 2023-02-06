import 'package:tdd_money/money.dart';

class Franc extends Money {
  Franc(super.amount) {
    _currency = "CHF";
  }
  late final String _currency;

  @override
  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }

  @override
  String currency() => _currency;
}

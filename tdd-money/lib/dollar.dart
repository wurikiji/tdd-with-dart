import 'package:tdd_money/money.dart';

class Dollar extends Money {
  const Dollar(this._amount);

  final int _amount;
  Dollar times(int multiplier) {
    return Dollar(_amount * multiplier);
  }

  @override
  bool operator ==(Object? other) {
    if (identical(this, other)) return true;
    return other is Dollar && other._amount == _amount;
  }
}

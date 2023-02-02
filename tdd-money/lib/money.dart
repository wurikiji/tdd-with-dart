import 'package:meta/meta.dart';

class Money {
  const Money(this.amount);
  @protected
  final int amount;

  @override
  bool operator ==(Object? other) {
    return runtimeType == other.runtimeType &&
        other is Money &&
        other.amount == amount;
  }
}

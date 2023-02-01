import 'package:meta/meta.dart';

class Money {
  const Money(this.amount);
  @protected
  final int amount;

  @override
  bool operator ==(Object? other) {
    if (identical(this, other)) return true;
    return other is Money && other.amount == amount;
  }
}

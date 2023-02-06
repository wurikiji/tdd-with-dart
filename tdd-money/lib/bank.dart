import 'package:tdd_money/expression.dart';
import 'package:tdd_money/money.dart';

class Bank {
  final rates = <Pair, int>{};
  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  int rate(String from, String to) {
    return (from == 'CHF' && to == 'USD') ? 2 : 1;
  }

  void addRate(String from, String to, int rate) {}
}

class Pair {
  final String from;
  final String to;

  const Pair(this.from, this.to);

  @override
  bool operator ==(Object other) {
    return other is Pair && other.from == from && other.to == to;
  }

  @override
  int get hashCode => from.hashCode ^ to.hashCode;
}

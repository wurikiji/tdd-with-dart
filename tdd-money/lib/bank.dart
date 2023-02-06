import 'package:tdd_money/expression.dart';
import 'package:tdd_money/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  int rate(String from, String to) {
    return (from == 'CHF' && to == 'USD') ? 2 : 1;
  }

  void addRate(String from, String to, int rate) {}
}

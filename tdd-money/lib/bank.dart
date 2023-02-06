import 'package:tdd_money/expression.dart';
import 'package:tdd_money/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    final sum = source as Sum;
    return sum.reduce(to);
  }
}

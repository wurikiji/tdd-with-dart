import 'package:tdd_money/bank.dart';

import 'money.dart';

abstract class Expression {
  const Expression();

  Money reduce(Bank bank, String to);
}

class Sum extends Expression {
  const Sum(this.augend, this.addend);
  final Money augend;
  final Money addend;

  @override
  Money reduce(Bank bank, String to) {
    final amount = augend.amount + addend.amount;
    return Money(amount, to);
  }
}

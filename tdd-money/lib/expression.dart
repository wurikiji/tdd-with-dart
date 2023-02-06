import 'package:tdd_money/bank.dart';

import 'money.dart';

abstract class Expression {
  const Expression();

  Money reduce(Bank bank, String to);
}

class Sum extends Expression {
  const Sum(this.augend, this.addend);
  final Expression augend;
  final Expression addend;

  @override
  Money reduce(Bank bank, String to) {
    final amount =
        augend.reduce(bank, to).amount + addend.reduce(bank, to).amount;
    return Money(amount, to);
  }
}

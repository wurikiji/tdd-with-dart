import 'money.dart';

abstract class Expression {
  const Expression();

  Money reduce(String to);
}

class Sum extends Expression {
  const Sum(this.augend, this.addend);
  final Money augend;
  final Money addend;

  @override
  Money reduce(String to) {
    final amount = augend.amount + addend.amount;
    return Money(amount, to);
  }
}

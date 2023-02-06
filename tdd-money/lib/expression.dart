import 'money.dart';

abstract class Expression {
  const Expression();
}

class Sum extends Expression {
  const Sum(this.augend, this.addend);
  final Money augend;
  final Money addend;
}

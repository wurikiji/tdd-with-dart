import 'package:tdd_money/dollar.dart';
import 'package:tdd_money/franc.dart';
import 'package:test/test.dart';

void main() {
  group('Money', () {
    test("Franc and Dollar shouldn't be equal", () {
      expect(Franc(5), isNot(equals(Dollar(5))));
      expect(Dollar(5), isNot(equals(Franc(5))));
    });
  });
}

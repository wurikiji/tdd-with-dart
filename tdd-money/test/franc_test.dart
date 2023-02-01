import 'package:tdd_money/franc.dart';
import 'package:test/test.dart';

void main() {
  group('Franc', () {
    test('can multiply a number', () {
      final five = Franc(5);
      // 아래의 동치성 테스트 코드가 잘못된 검증을 하고 있다면
      // 이 코드들도 잘못된 검증을 하게 됨.
      expect(five.times(2), equals(Franc(10)));
      expect(five.times(3), equals(Franc(15)));
    });

    test('should be same with same amount', () {
      expect(Franc(5), equals(Franc(5)));
      expect(Franc(6), isNot(equals(Franc(5))));
    });
  });
}

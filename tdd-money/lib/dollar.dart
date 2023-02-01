class Dollar {
  Dollar(this.amount);

  int amount;
  void times(int multiplier) {
    // * 2 라는 테스트/구현 사이의 중복을 제거
    // 중복 제거를 위해 amount = amount * multiplier 가 아닌 *= 오퍼레이터를 사용
    amount *= multiplier;
  }
}

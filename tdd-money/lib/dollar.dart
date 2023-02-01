class Dollar {
  Dollar(this.amount);

  int amount;
  Dollar times(int multiplier) {
    amount *= multiplier;
    // 컴파일이 되도록 수정
    return this;
  }
}

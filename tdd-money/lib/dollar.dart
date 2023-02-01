class Dollar {
  const Dollar(this.amount);

  final int amount;
  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}

class Dollar {
  Dollar(this.amount);

  int amount;
  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}

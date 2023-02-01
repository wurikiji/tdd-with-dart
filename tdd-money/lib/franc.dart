class Franc {
  const Franc(this._amount);

  final int _amount;
  Franc times(int multiplier) {
    return Franc(_amount * multiplier);
  }

  @override
  bool operator ==(Object? other) {
    if (identical(this, other)) return true;
    return other is Franc && other._amount == _amount;
  }
}

class YearMonth {
  final int year;
  final int month;

  YearMonth({required this.year, required this.month});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is YearMonth && other.year == year && other.month == month;
  }

  @override
  int get hashCode => Object.hash(year, month);
}

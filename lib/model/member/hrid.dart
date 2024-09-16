class HRID {
  final String hrid;

  HRID({required this.hrid});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HRID && other.hrid == hrid;
  }

  @override
  int get hashCode => hrid.hashCode;
}

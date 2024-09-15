class ProjectName {
  final String value;

  ProjectName({required this.value});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProjectName && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

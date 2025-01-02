class UserSubgroup {
  final int id;
  final String name;
  final String description;
  final String code;
  final String academicYear;
  final String academicSemester;

  UserSubgroup({
    required this.id,
    required this.name,
    required this.description,
    required this.code,
    required this.academicYear,
    required this.academicSemester,
  });

  factory UserSubgroup.fromJson(Map<String, dynamic> json) {
    return UserSubgroup(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? '',
      code: json['code'],
      academicYear: json['academic_year'],
      academicSemester: json['academic_semester'],
    );
  }
}

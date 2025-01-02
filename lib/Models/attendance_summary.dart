class AttendanceSummary {
  final int present;
  final int absent;
  final double percentage;
  final int total;
  final Course course;

  AttendanceSummary({
    required this.present,
    required this.absent,
    required this.percentage,
    required this.total,
    required this.course,
  });

  factory AttendanceSummary.fromJson(Map<String, dynamic> json) {
    return AttendanceSummary(
      present: json['present'],
      absent: json['absent'],
      percentage: json['persantage'].toDouble(),
      total: json['totel'],
      course: Course.fromJson(json['course']),
    );
  }
}

class Course {
  final int id;
  final String name;
  final String code;

  Course({
    required this.id,
    required this.name,
    required this.code,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      name: json['name'],
      code: json['code'],
    );
  }
}

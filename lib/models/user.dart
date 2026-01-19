enum UserType { admin, staff, student }

class User {
  final String name;
  final UserType type;
  final String? studentId;

  User({
    required this.name,
    required this.type,
    this.studentId,
  });

  String get roleLabel {
    switch (type) {
      case UserType.admin:
        return 'Administrator';
      case UserType.staff:
        return 'Laboratory Staff';
      case UserType.student:
      default:
        return 'Student';
    }
  }
}
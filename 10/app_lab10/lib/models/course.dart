class Course {
  final int? id;
  final String title;
  final String instructor;

  Course({this.id, required this.title, required this.instructor});

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'instructor': instructor};
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      instructor: map['instructor'],
    );
  }
}

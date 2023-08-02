// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:day_pilot/src/utils/enums.dart';

typedef ProductID = String;

class Task {
  final ProductID id;
  final String title;
  final Priority priority;
  final TaskStatus status;
  final DateTime duration;
  final DateTime timeLeft;
  final bool isCompleted;

  const Task({
    required this.id,
    required this.title,
    required this.priority,
    required this.status,
    required this.duration,
    required this.timeLeft,
    required this.isCompleted,
  });

  @override
  bool operator ==(covariant Task other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.priority == priority &&
        other.status == status &&
        other.duration == duration &&
        other.timeLeft == timeLeft &&
        other.isCompleted == isCompleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        priority.hashCode ^
        status.hashCode ^
        duration.hashCode ^
        timeLeft.hashCode ^
        isCompleted.hashCode;
  }

  @override
  String toString() {
    return 'Task(id: $id, title: $title, priority: $priority, status: $status, duration: $duration, timeLeft: $timeLeft, isCompleted: $isCompleted)';
  }
}

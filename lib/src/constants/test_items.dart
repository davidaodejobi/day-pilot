import 'package:day_pilot/src/features/task/domain/task.dart';
import 'package:day_pilot/src/utils/enums.dart';

List<Task> kDummyTasks = [
  Task(
    id: '1',
    title: 'Task 1',
    priority: Priority.high,
    status: TaskStatus.pending,
    duration: DateTime.now(),
    timeLeft: DateTime.now().add(const Duration(hours: 3)),
    isCompleted: false,
  ),
  Task(
    id: '2',
    title: 'Task 2',
    priority: Priority.medium,
    status: TaskStatus.inProgress,
    duration: DateTime.now(),
    timeLeft: DateTime.now().add(const Duration(hours: 2)),
    isCompleted: false,
  ),
  Task(
    id: '3',
    title: 'Task 3',
    priority: Priority.low,
    status: TaskStatus.completed,
    duration: DateTime.now(),
    timeLeft: DateTime.now().subtract(const Duration(hours: 1)),
    isCompleted: true,
  ),
  Task(
    id: '4',
    title: 'Task 4',
    priority: Priority.high,
    status: TaskStatus.blocked,
    duration: DateTime.now(),
    timeLeft: DateTime.now().add(const Duration(hours: 5)),
    isCompleted: false,
  ),
  Task(
    id: '5',
    title: 'Task 5',
    priority: Priority.medium,
    status: TaskStatus.pending,
    duration: DateTime.now(),
    timeLeft: DateTime.now().add(const Duration(hours: 7)),
    isCompleted: false,
  ),
];

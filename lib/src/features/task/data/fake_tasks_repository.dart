import 'package:day_pilot/src/constants/test_items.dart';
import 'package:day_pilot/src/features/task/domain/task.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FakeItemsRepository {
  final List<Task> _tasks = kDummyTasks;

  List<Task> getTasks() {
    return _tasks;
  }

  Task getTaskById(String id) {
    return _tasks.firstWhere((task) => task.id == id);
  }
}

final fakeItemsRepositoryProvider = Provider<FakeItemsRepository>((ref) {
  return FakeItemsRepository();
});

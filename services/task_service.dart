import 'package:shared_preferences/shared_preferences.dart';

class TaskService {
  Future<List<String>> getTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('tasks') ?? [];
  }

  Future<void> saveTasks(List<String> tasks) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('tasks', tasks);
  }
}

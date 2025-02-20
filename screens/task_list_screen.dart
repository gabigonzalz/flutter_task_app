import 'package:flutter/material.dart';
import '../services/task_service.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<String> tasks = [];
  final TaskService _taskService = TaskService();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  _loadTasks() async {
    List<String> loadedTasks = await _taskService.getTasks();
    setState(() {
      tasks = loadedTasks;
    });
  }

  _addTask() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController taskController = TextEditingController();
        return AlertDialog(
          title: Text('Nueva Tarea'),
          content: TextField(controller: taskController),
          actions: [
            TextButton(
              onPressed: () {
                if (taskController.text.isNotEmpty) {
                  setState(() {
                    tasks.add(taskController.text);
                    _taskService.saveTasks(tasks);
                  });
                }
                Navigator.pop(context);
              },
              child: Text('Agregar'),
            ),
          ],
        );
      },
    );
  }

  _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
      _taskService.saveTasks(tasks);
    });
  }

  @override
  Widget build(BuildContext context) {
    //int counter = tasks.length;
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Tareas')),
      body: tasks.isEmpty
          ? Center(child: Text('No hay tareas. ¡Agrega una!'))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.task_alt, color: const Color.fromARGB(255, 164, 85, 180)),
                    onPressed: () => _removeTask(index),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:assignment_1/models/task.dart';
import 'package:assignment_1/screens/add_task_page.dart';
import 'package:assignment_1/widgets/my_appbar.dart';
import 'package:assignment_1/widgets/taskcard.dart';
import 'package:flutter/material.dart';

class TaskBoardPage extends StatefulWidget {
  const TaskBoardPage({super.key});

  @override
  State<TaskBoardPage> createState() => _TaskBoardPageState();
}

class _TaskBoardPageState extends State<TaskBoardPage> {
  List<TaskCardData> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(titleText: "Task Board"),
      body: ListView(
        children: List.from(tasks.map((task) {
          return TaskCardWidget(taskCardData: task);
        })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => AddTaskPage(
                onTaskAddCallback: (task) {
                  setState(() {
                    tasks.add(task);
                  });
                  Navigator.of(context).pop();
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

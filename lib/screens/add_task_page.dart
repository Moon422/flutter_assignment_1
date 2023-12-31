import 'package:assignment_1/models/task.dart';
import 'package:assignment_1/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  final void Function(TaskCardData) onTaskAddCallback;

  const AddTaskPage({super.key, required this.onTaskAddCallback});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  String taskName = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titleText: "Add Task"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    taskName = value;
                  });
                },
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter Task Name",
                  label: Text("Task Name"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  description = value;
                },
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter Task Description",
                  label: Text("Task Description"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                maxLines: 5,
              ),
              const Spacer(),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.black),
                  foregroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                  shape: MaterialStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  widget.onTaskAddCallback(
                    TaskCardData(
                      title: taskName,
                      description: description,
                      deadline: DateTime.now(),
                    ),
                  );
                },
                child: const Text("Add Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

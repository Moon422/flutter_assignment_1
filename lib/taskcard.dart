import 'package:flutter/material.dart';

class TaskCardWidget extends StatefulWidget {
  final TaskCardData taskCardData;

  const TaskCardWidget({
    super.key,
    required this.taskCardData,
  });

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(widget.taskCardData.title),
            Text(widget.taskCardData.description),
            Text(widget.taskCardData.deadline.toString()),
          ],
        ),
      ),
    );
  }
}

class TaskCardData {
  String title;
  String description;
  DateTime deadline;

  TaskCardData({
    required this.title,
    required this.description,
    required this.deadline,
  });
}

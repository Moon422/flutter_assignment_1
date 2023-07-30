import 'package:assignment_1/taskcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskBoardPage extends StatefulWidget {
  const TaskBoardPage({super.key});

  @override
  State<TaskBoardPage> createState() => _TaskBoardPageState();
}

class _TaskBoardPageState extends State<TaskBoardPage> {
  List<TaskCardData> tasks = [
    TaskCardData(
      title: "Task One",
      description:
          "Your Personal task management and planning solution for planning your day, week & months",
      deadline: DateTime(2023, 5, 25, 12, 55),
    ),
    TaskCardData(
      title: "Task Two",
      description:
          "Your Personal task management and planning solution for planning your day, week & months",
      deadline: DateTime(2023, 5, 25, 12, 55),
    ),
    TaskCardData(
      title: "Task Three",
      description:
          "Your Personal task management and planning solution for planning your day, week & months",
      deadline: DateTime(2023, 5, 25, 12, 55),
    ),
  ];

  String formattedDateTime(DateTime dateTime) {
    int hour = dateTime.hour;
    int minute = dateTime.minute;

    if (hour >= 12 && minute > 0) {
      return "$hour:$minute pm "
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Task Board"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: ListView(
        children: List.from(tasks.map((task) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xF5F8FBFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  task.description,
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    task.deadline.toString(),
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          );
        })),
      ),
    );
  }
}

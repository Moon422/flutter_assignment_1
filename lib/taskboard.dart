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

  String monthFromInt(int monthInt) {
    switch (monthInt) {
      case 1:
        return "January";
      case 2:
        return "February";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "August";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
      default:
        throw "Invalid month index";
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
                    "${task.deadline.hour}:${task.deadline.minute} ${task.deadline.hour >= 12 ? 'pm' : 'am'} ${task.deadline.day == 1 || task.deadline.day == 21 || task.deadline.day == 31 ? '${task.deadline.day}st' : task.deadline.day == 2 || task.deadline.day == 22 ? '${task.deadline.day}nd' : task.deadline.day == 3 ? '${task.deadline.day}rd' : '${task.deadline.day}th'} ${monthFromInt(task.deadline.month)}, ${task.deadline.year}",
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

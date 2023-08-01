import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            widget.taskCardData.title,
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            widget.taskCardData.description,
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w300,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "${widget.taskCardData.deadline.hour > 12 ? '${widget.taskCardData.deadline.hour - 12}' : '${widget.taskCardData.deadline.hour}'}:${widget.taskCardData.deadline.minute} ${widget.taskCardData.deadline.hour >= 12 ? 'pm' : 'am'} ${widget.taskCardData.deadline.day == 1 || widget.taskCardData.deadline.day == 21 || widget.taskCardData.deadline.day == 31 ? '${widget.taskCardData.deadline.day}st' : widget.taskCardData.deadline.day == 2 || widget.taskCardData.deadline.day == 22 ? '${widget.taskCardData.deadline.day}nd' : widget.taskCardData.deadline.day == 3 ? '${widget.taskCardData.deadline.day}rd' : '${widget.taskCardData.deadline.day}th'} ${monthFromInt(widget.taskCardData.deadline.month)}, ${widget.taskCardData.deadline.year}",
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
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

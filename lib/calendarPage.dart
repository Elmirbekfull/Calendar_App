

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreenWidget extends StatefulWidget {
  const CalendarScreenWidget({Key? key}) : super(key: key);

  @override
  State<CalendarScreenWidget> createState() => _CalendarScreenWidgetState();
}

class _CalendarScreenWidgetState extends State<CalendarScreenWidget> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime? focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text(
          "Calendar App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Selected day : " + today.toString().split(" ")[0],
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: TableCalendar(
              // locale: 'ru_RU',
              rowHeight: 43,
              focusedDay: today,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              firstDay: DateTime.utc(2023, 07, 09),
              lastDay: DateTime.utc(2030, 03, 14),
              onDaySelected: _onDaySelected,
            ),
          ),
        ],
      ),
    );
  }
}
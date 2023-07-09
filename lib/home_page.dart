

import 'package:calendar_app/calendarPage.dart';
import 'package:flutter/material.dart';

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalendarScreenWidget(),
    );
  }
}
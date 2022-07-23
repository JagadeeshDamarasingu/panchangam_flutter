import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panchangam/days.dart';

class DayHeaderView extends StatelessWidget {
  final int weekDay;

  const DayHeaderView(this.weekDay, {super.key});

  @override
  Widget build(BuildContext context) {
    final dayName = Day.values[weekDay].name.substring(0, 3);
    return Container(
      constraints: const BoxConstraints.tightFor(),
      decoration: const BoxDecoration(
        color: Colors.lime,
      ),
      child: Center(child: Text(dayName, style: GoogleFonts.raleway(fontWeight: FontWeight.w500))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef DayTappedCallback = void Function(int day);

class DayCellView extends StatelessWidget {
  final int day;
  final DayTappedCallback? onTap;

  const DayCellView(this.day, {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(),
      decoration: const BoxDecoration(color: Colors.limeAccent),
      child: InkWell(
        onTap: onTap != null ? () => onTap!(day) : null,
        child: Center(child: Text(day.toString(), style: GoogleFonts.raleway())),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:panchangam/widgets/day_cell_view.dart';
import 'package:panchangam/widgets/day_header_view.dart';

class MonthWithDaysView extends StatefulWidget {
  final int month;
  final int year;

  const MonthWithDaysView(this.year, this.month, {super.key});

  @override
  State createState() => _MonthWithDaysViewState();
}

class _MonthWithDaysViewState extends State<MonthWithDaysView> {
  void _onDayTapped(int day) {
    debugPrint("dayTapped: $day");
  }

  @override
  Widget build(BuildContext context) {
    final firstDay = DateTime(widget.year, widget.month, 1);
    final firstDayIndex = firstDay.weekday;
    debugPrint("firstday: $firstDay $firstDayIndex");

    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: DateUtils.getDaysInMonth(widget.year, widget.month) + firstDayIndex + 7,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        itemBuilder: (context, index) {
          if (index < 7) return DayHeaderView(index);
          if (index >= 7 && index < firstDayIndex + 7) return Container();
          return DayCellView(
            index - firstDayIndex - 6,
            onTap: _onDayTapped,
          );
        });
  }
}

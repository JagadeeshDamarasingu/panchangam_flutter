import 'package:flutter/material.dart';

class MonthView extends StatefulWidget {
  const MonthView({super.key});

  @override
  State createState() => _MonthViewState();
}

class _MonthViewState extends State<MonthView> {
  Widget _headerView() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.limeAccent,
      ),
      child: Text(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        itemBuilder: (context, index) {});
  }
}

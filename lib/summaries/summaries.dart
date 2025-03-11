import 'package:flutter/material.dart';
import 'package:posture_pro/constants/colors.dart';

class Summaries extends StatefulWidget {
  const Summaries({super.key});

  @override
  State<Summaries> createState() => _SummariesState();
}

class _SummariesState extends State<Summaries>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Center(child: Column(children: [Text('This is the Summaries Page')])),
    );
  }
}

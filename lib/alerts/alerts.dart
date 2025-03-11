import 'package:flutter/material.dart';
import 'package:posture_pro/constants/colors.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Center(child: Column(children: [Text('This is the Alerts Page')])),
    );
  }
}

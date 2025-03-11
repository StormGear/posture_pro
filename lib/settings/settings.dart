import 'package:flutter/material.dart';
import 'package:posture_pro/constants/colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child:
          Center(child: Column(children: [Text('This is the Settings Page')])),
    );
  }
}

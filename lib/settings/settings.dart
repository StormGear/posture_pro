import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      padding: EdgeInsets.all(20),
      color: white,
      child: Center(
          child: Column(children: [
        Row(
          children: [
            Text(
              'Bluetooth Connection',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Gap(20),
        Container(
            width: 350,
            height: 45,
            decoration: ShapeDecoration(
              color: Color(0xFF5068E2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                'Scan and Pair Device',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Auto Reconnect Device',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Switch(
            value: true,
            activeTrackColor: Color(0xFF5068E2),
            onChanged: (value) {
              setState(() {
                value = !value;
              });
            },
          ),
        ]),
        Gap(50),
        Row(
          children: [
            Text(
              'Data Management',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Allow Data Logging On Device',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Switch(
            value: true,
            activeTrackColor: Color(0xFF5068E2),
            onChanged: (value) {
              setState(() {
                value = !value;
              });
            },
          ),
        ]),
        Gap(100),
        Container(
          width: 350,
          height: 45,
          decoration: ShapeDecoration(
            color: Color(0x005068E2),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF5068E2)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              'Clear Data',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5068E2),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ])),
    );
  }
}

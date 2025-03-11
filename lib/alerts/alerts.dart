import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      padding: EdgeInsets.all(20),
      child: Center(
          child: Column(children: [
        Row(
          children: [
            Text(
              'Alert Controls',
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
            'Vibrational Alerts',
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Sound Alerts',
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Visual Alerts',
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
        Gap(60),
        Row(
          children: [
            Text(
              'Sensitivity Control',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Alert sensitivity level',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 350,
          height: 34,
          child: Text(
            'Lower sensitivity means fewer alerts, higher sensitivity means more potential alerts.',
            style: TextStyle(
              color: Color(0xFFA2A2A2),
              fontSize: 13,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Gap(60),
        Row(
          children: [
            Text(
              'Test Alerts',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Gap(10),
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
                'Play Test ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
        Gap(20),
        SizedBox(
          width: 350,
          height: 34,
          child: Text(
            'This will play a test alert sound so you can confirm your settings.',
            style: TextStyle(
              color: Color(0xFFA2A2A2),
              fontSize: 13,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ])),
    );
  }
}

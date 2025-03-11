import 'package:flutter/material.dart';
import 'package:posture_pro/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Center(child: Column(children: [Text('This is the Home Page')])),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posture_pro/onboard/onboard.dart';
import 'package:posture_pro/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: appRoutes,
        debugShowCheckedModeBanner: false,
        title: 'Posture Pro',
        home: const Onboard());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.21, -0.98),
              end: Alignment(0.21, 0.98),
              colors: [Color(0xFF70A0E9), Color(0xFF5068E2)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/logo_white.svg'),
              Text(
                'PosturePro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Tap to start your journey to better posture!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(100),
            ],
          ),
        ),
        Positioned(
          bottom: 80,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Get.toNamed('/home');
            },
            child: Container(
              width: 350,
              height: 52,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF5068E2),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

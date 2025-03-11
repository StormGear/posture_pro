import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:posture_pro/alerts/alerts.dart';
import 'package:posture_pro/constants/colors.dart';
import 'package:posture_pro/home/home.dart';
import 'package:posture_pro/settings/settings.dart';
import 'package:posture_pro/summaries/summaries.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Color currentColor = primaryColor;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        backgroundColor: white,
        surfaceTintColor: white,
        elevation: 1.0,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/logo_black.svg'),
              Text(
                'PosturePro',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                SvgPicture.asset('assets/connection_active.svg'),
                Text(
                  'Connected',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: switch (_selectedIndex) {
        0 => Home(),
        1 => Alerts(),
        2 => Summaries(),
        3 => Settings(),
        _ => Text(
            'Home Page',
            style: TextStyle(color: currentColor),
          )
      },
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/home_active.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/alerts_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/alerts_active.svg'),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/summaries_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/summaries_active.svg'),
            label: 'Summaries',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/settings_inactive.svg'),
            activeIcon: SvgPicture.asset('assets/settings_active.svg'),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

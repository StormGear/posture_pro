import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:posture_pro/constants/colors.dart';
import 'package:posture_pro/summaries/demo_values.dart';
import 'package:posture_pro/summaries/summary_model.dart';

class Summaries extends StatefulWidget {
  const Summaries({super.key});

  @override
  State<Summaries> createState() => _SummariesState();
}

class _SummariesState extends State<Summaries> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: white,
      child: Center(
          child: Column(children: [
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)),
              isDense: true,
              prefixIcon: Icon(
                Icons.search,
                size: 25,
                color: Color(0xFFA0A3B1),
              ),
              fillColor: Color(0x68DEE1E6),
              filled: true,
              border: OutlineInputBorder(),
              labelText: 'Search Sessions....',
              labelStyle: TextStyle(
                color: Color(0xFFA0A3B1),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              )),
        ),
        Gap(20),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: demoPostureSummaries.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Session(
                      summary: demoPostureSummaries[index],
                    ),
                    Gap(10)
                  ],
                );
              }),
        ),
      ])),
    );
  }
}

class Session extends StatelessWidget {
  const Session({super.key, required this.summary});

  final PostureSummary summary;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 100,
        decoration: ShapeDecoration(
          color: Color(0x87EFEFEF),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.white),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date: ${summary.date.year}-${summary.date.month}-${summary.date.month}, ${summary.date.hour}:${summary.date.minute} AM',
                    style: TextStyle(
                      color: Color(0xFF9095A0),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(10),
                  Text(
                    'Score: ${summary.score}%- Good posture maintained ',
                    style: TextStyle(
                      color: Color(0xFF9095A0),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset(
              switch (summary.posture) {
                'Good' => "assets/good_posture.svg",
                'Fair' => "assets/yellow_posture.svg",
                'Poor' => "assets/red_posture.svg",
                _ => "assets/good_posture.svg",
              },
              width: 50,
              height: 50,
            )
          ],
        ));
  }
}

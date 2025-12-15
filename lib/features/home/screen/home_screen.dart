import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:top_talent_agency/common/navBar/custom_bottom_navbar.dart';
import 'package:top_talent_agency/features/home/widget/custom_alerts.dart';
import 'package:top_talent_agency/features/home/widget/custom_minicontainer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:top_talent_agency/features/home/widget/custom_pichart.dart';
import 'package:top_talent_agency/features/home/widget/custom_summary.dart';

import '../widget/custom_coin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: AppBar(
        backgroundColor: Color(0xff101828),
        elevation: 0,
        toolbarHeight: 100,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: ClipOval(
                child: SvgPicture.asset(
                  'assets/sara.svg',
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Admin User',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Welcome back, Admin',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffA2A3A3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
     ),
    ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 9.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomMinicontainer(
                    title: "Total Creators",
                    subtitle: "↑ 5.2% from last month",
                    iconPath: 'assets/user.svg',
                    number: 1000,
                    subtitleColor: Color(0xff00A63E),
                  ),
                  SizedBox(width: 9),
                  CustomMinicontainer(
                    title: "Managers",
                    subtitle: "↑ Avg 120 creators each",
                    iconPath: 'assets/m.svg',
                    number: 20,
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  CustomMinicontainer(
                    title: "Underperforming",
                    subtitle: "20.0% of total",
                    iconPath: 'assets/icons.svg',
                    number: 240,
                    subtitleColor: Color((0xffF54900)),

                  ),
                  SizedBox(width: 9),
                  CustomMinicontainer(
                    title: "Scraped Today",
                    subtitle: "Last: 30 mins ago",
                    iconPath: 'assets/clock.svg',
                    number: 45623,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "December Overview",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              CustomPichart(),

              SizedBox(height: 25),
              CustomCoin(),

              SizedBox(height: 20),
              CustomAlerts(),

              SizedBox(height: 20),
              CustomSummary(),

              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}

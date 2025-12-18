import 'package:flutter/material.dart';
import 'package:top_talent_agency/features/alert/screen/alerts_screen.dart';
import 'package:top_talent_agency/features/creator/creator_screen.dart';
import 'package:top_talent_agency/features/home/screen/home_screen.dart';
import 'package:top_talent_agency/features/manager/screen/managers_screen.dart';
import 'package:top_talent_agency/features/more/more_screen.dart';
import 'package:top_talent_agency/features/target/screen/target_screen.dart';
import 'bottom_tab_item.dart';


final List<BottomTabItem> bottomTabs = [

  BottomTabItem(
    label: "Managers",
    icon: Icons.people_outline,
    page: const ManagersScreen(),
    admin: true,
    manager: false,
  ),

  BottomTabItem(
    label: "Creators",
    icon: Icons.person_outline,
    page: const CreatorsScreen(),
    admin: false,
    manager: true,
  ),

  BottomTabItem(
    label: "Targets",
    icon: Icons.track_changes,
    page: const TargetsScreen(),
  ),

  BottomTabItem(
    label: "Home",
    icon: Icons.home_outlined,
    page: const HomeScreen(),
    isCenter: true,
  ),

  BottomTabItem(
    label: "Alerts",
    icon: Icons.notifications_none,
    page: const AlertsScreen(),
  ),

  BottomTabItem(
    label: "More",
    icon: Icons.settings_outlined,
    page: const MoreScreen(),
  ),
];

import 'package:flutter/material.dart';
import 'package:top_talent_agency/common/navBar/bottom_tab_item.dart';
import '../core/roles.dart';
import 'navBar/bottom_tabs.dart';
import 'navBar/custom_bottom_navbar.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int index = 2;

  List<BottomTabItem> get visibleTabs {
    return bottomTabs.where((tab) {
      if (currentUiUserRole == UiUserRole.admin) {
        return tab.admin;
      } else {
        return tab.manager;
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = visibleTabs;

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: tabs.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: CustomBottomNav(
        tabs: tabs,
        currentIndex: index,
        onTap: (i) {
          setState(() => index = i);
        },
      ),
    );
  }
}

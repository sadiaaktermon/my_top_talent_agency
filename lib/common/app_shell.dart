import 'package:flutter/material.dart';
import 'package:top_talent_agency/common/navBar/bottom_tab_item.dart';
import 'package:top_talent_agency/common/navBar/bottom_tabs.dart';
import 'package:top_talent_agency/common/navBar/custom_bottom_navbar.dart';
import 'package:top_talent_agency/core/roles.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int index = 2;

  final List<GlobalKey<NavigatorState>> _navigatorKeys =
  List.generate(6, (_) => GlobalKey<NavigatorState>());

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
        children: List.generate(tabs.length, (i) {
          return Navigator(
            key: _navigatorKeys[i],
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (_) => tabs[i].page,
              );
            },
          );
        }),
      ),

      bottomNavigationBar: CustomBottomNav(
        tabs: tabs,
        currentIndex: index,
        onTap: (i) {
          if (i == index) {
            _navigatorKeys[i]
                .currentState
                ?.popUntil((route) => route.isFirst);
          } else {
            setState(() => index = i);
          }
        },
      ),
    );
  }
}
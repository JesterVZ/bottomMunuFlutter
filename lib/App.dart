import 'package:bottom_menu_flutter/screens/chat_page.dart';
import 'package:bottom_menu_flutter/screens/map_page.dart';
import 'package:bottom_menu_flutter/screens/profile_page.dart';
import 'package:bottom_menu_flutter/screens/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'elements/bottom_nav.dart';
import 'elements/tab_item.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  // this is static property so other widget throughout the app
  // can access it simply by AppState.currentTab
  static int currentTab = 0;

  final List<TabItem> tabs = [
    TabItem(
      tabName: "Profile",
      icon: Icons.home,
      page: const ProfilePage()
    ),
    TabItem(
      tabName: "Chat",
      icon: Icons.chat,
      page: ChatPage()
    ),
    TabItem(
        tabName: "Settings",
        icon: Icons.settings,
        page: SettingsPage()
    ),
    TabItem(
        tabName: "Map",
        icon: Icons.map,
        page: const MapPage()
    ),
  ];

  AppState() {
    tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }

  void _selectTab(int index) {
    if (index == currentTab) {
      // pop to first route
      // if the user taps on the active tab
      tabs[index].key.currentState?.popUntil((route) => route.isFirst);
    } else {
      // update the state
      // in order to repaint
      setState(() => currentTab = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
          !await tabs[currentTab].key.currentState!.maybePop();
          if (isFirstRouteInCurrentTab) {
            // if not on the 'main' tab
            if (currentTab != 0) {
              // select 'main' tab
              _selectTab(0);
              // back button handled by app
              return false;
            }
          }
          return isFirstRouteInCurrentTab;
        },
      child: Scaffold(
        // indexed stack shows only one child
        body: IndexedStack(
          index: currentTab,
          children: tabs.map((e) => e.page).toList(),
        ),
        // Bottom navigation
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
          tabs: tabs,
        ),
      ),
    );
  }


}
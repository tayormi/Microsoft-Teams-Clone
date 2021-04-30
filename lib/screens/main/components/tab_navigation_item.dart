import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'chat_list_screen.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;
  final Icon activeIcon;

  TabNavigationItem({
    @required this.activeIcon,
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Container(),
          icon: const Icon(FluentIcons.alert_32_regular),
          activeIcon: const Icon(FluentIcons.alert_32_filled),
          title: "Activity",
        ),
        TabNavigationItem(
          page: ChatListScreen(),
          icon: const Icon(FluentIcons.chat_32_regular),
          activeIcon: const Icon(FluentIcons.chat_32_filled),
          title: "Chat",
        ),
        TabNavigationItem(
          page: Container(),
          icon: const Icon(FluentIcons.people_team_32_regular),
          activeIcon: const Icon(FluentIcons.people_team_32_filled),
          title: "Teams",
        ),
        TabNavigationItem(
          page: Container(),
          icon: const Icon(FluentIcons.calendar_ltr_32_regular),
          activeIcon: const Icon(FluentIcons.calendar_ltr_32_filled),
          title: "Calendar",
        ),
        TabNavigationItem(
          page: Container(),
          icon: const Icon(FluentIcons.call_32_regular),
          activeIcon: const Icon(FluentIcons.call_32_filled),
          title: "Calls",
        ),
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ms_teams/constants.dart';

import 'components/tab_navigation_item.dart';

class MobileChatListScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _currentIndex = useState(1);
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex.value,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xFF373737),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: kPrimaryColor,
        elevation: 0,
        backgroundColor: const Color(0xFFf0f0f0),
        currentIndex: _currentIndex.value,
        onTap: (int index) => _currentIndex.value = index,
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              activeIcon: tabItem.activeIcon,
              label: tabItem.title,
            )
        ],
      ),
    );
  }
}

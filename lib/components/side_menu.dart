import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ms_teams/components/side_menu_item.dart';

import '../constants.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kPrimaryColor,
      child: SafeArea(
        child: SingleChildScrollView(
          // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              // SizedBox(height: kDefaultPadding * 2),
              SideMenuItem(
                press: () {},
                title: "Activity",
                icon: FluentIcons.alert_32_filled,
                isActive: false,
                itemCount: 3,
                isHover: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Chat",
                icon: FluentIcons.chat_32_filled,
                isActive: true,
                itemCount: 3,
                isHover: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Teams",
                icon: FluentIcons.people_team_32_filled,
                isActive: false,
                itemCount: 3,
                isHover: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Calendar",
                icon: FluentIcons.calendar_ltr_32_filled,
                isActive: false,
                itemCount: 3,
                isHover: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Calls",
                icon: FluentIcons.call_32_filled,
                isActive: false,
                itemCount: 3,
                isHover: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

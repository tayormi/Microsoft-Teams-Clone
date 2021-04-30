import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ms_teams/components/side_menu.dart';
import 'package:ms_teams/constants.dart';
import 'package:ms_teams/responsive.dart';
import 'package:ms_teams/screens/chat/chat_screen.dart';

import 'components/chat_list_screen.dart';
import 'mobile_chat_list_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        desktop: Column(
          children: [
            Container(
              width: _size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              color: kBgDarkColor,
              child: MoveWindow(
                child: Row(
                  children: [
                    SizedBox(
                      width: _size.width * 0.23,
                    ),
                    const Icon(FluentIcons.chevron_left_20_filled,
                        color: Color(0xFFb6bbda)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(FluentIcons.chevron_right_20_filled,
                        color: Color(0xFF9194c9)),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: _size.width * 0.5,
                      height: _size.height,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFd9dae3),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        children: [
                          const Icon(FluentIcons.search_16_regular,
                              size: 13, color: Color(0xFF706f72)),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              textCapitalization: TextCapitalization.sentences,
                              onChanged: (value) {},
                              cursorColor: kPrimaryColor,
                              decoration: const InputDecoration.collapsed(
                                  hintText: 'Search or type a command',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                      color: Color(0xFF54548a))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      backgroundImage: AssetImage('assets/images/user_2.png'),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(width: 90, child: SideMenu()),
                  Expanded(
                    flex: _size.width > 1340 ? 3 : 5,
                    child: ChatListScreen(),
                  ),
                  Expanded(
                    flex: _size.width > 1340 ? 10 : 10,
                    child: const ChatScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
        mobile: MobileChatListScreen(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ChatListScreen(),
            ),
            const Expanded(
              flex: 9,
              child: ChatScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ms_teams/constants.dart';
import 'package:ms_teams/models/message.dart';
import 'package:ms_teams/responsive.dart';
import 'package:ms_teams/screens/chat/chat_screen.dart';
import 'package:ms_teams/screens/main/components/chat_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ChatListScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
            right: false,
            child: Container(
              color: const Color(0xFFf0f0f0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xFFf0f0f0),
                        border: Border(
                            right: BorderSide(color: Color(0xFFe0e0e0)),
                            bottom: BorderSide(color: Color(0xFFe0e0e0)))),
                    child: Row(
                      children: [
                        const Text(
                          "Chat",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                            color: Color(0xFF2b292a),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        WebsafeSvg.asset(
                          "assets/Icons/Angle down.svg",
                          width: 16,
                          color: Colors.black54,
                        ),
                        const Spacer(),
                        MaterialButton(
                          minWidth: 20,
                          onPressed: () {},
                          child: const Icon(FluentIcons.filter_16_regular,
                              color: Colors.black54),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        MaterialButton(
                            minWidth: 20,
                            onPressed: () {},
                            child: const Icon(FluentIcons.edit_16_regular,
                                color: Colors.black54)),
                      ],
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                  Expanded(
                    child: ListView.builder(
                      itemCount: chats.length,
                      // On mobile this active dosen't mean anything
                      itemBuilder: (context, index) => ChatCard(
                        isActive: !Responsive.isMobile(context) && index == 1,
                        chat: chats[index],
                        press: () {
                          final Message chat = chats[1];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                user: chat.sender,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

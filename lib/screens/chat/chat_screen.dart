import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ms_teams/constants.dart';
import 'package:ms_teams/models/message.dart';
import 'package:ms_teams/models/user.dart';
import 'package:ms_teams/screens/chat/components/chat_message.dart';
import 'package:ms_teams/screens/chat/components/new_chat.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'components/message_area.dart';

class ChatScreen extends StatelessWidget {
  final User user;

  const ChatScreen({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: user != null
            ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFf5f5f5),
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            //  color: Colors.white,
                            border: Border(
                                right: BorderSide(color: Colors.grey[300]),
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: Row(
                          children: [
                            Text(
                              user?.name ?? '',
                              style: const TextStyle(
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
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFFd1d1d1)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(FluentIcons.video_16_regular,
                                            color: const Color(0xFF242424)
                                                .withOpacity(0.5)),
                                      ],
                                    ),
                                  ),
                                  const VerticalDivider(),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Icon(FluentIcons.call_16_regular,
                                            color: const Color(0xFF242424)
                                                .withOpacity(0.5)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Expanded(
                        child: ListView.builder(
                          reverse: true,
                          padding: const EdgeInsets.only(top: 15.0),
                          itemCount: messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Message message = messages[index];
                            final bool isMe =
                                message.sender.id == currentUser.id;
                            return ChatMessage(
                              message: message,
                              isMe: isMe,
                            );
                          },
                        ),
                      ),
                      MessageArea()
                    ],
                  ),
                ),
              )
            : NewChat(),
      ),
    );
  }
}

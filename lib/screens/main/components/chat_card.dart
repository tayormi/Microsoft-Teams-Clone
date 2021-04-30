import 'package:flutter/material.dart';
import 'package:ms_teams/constants.dart';
import 'package:ms_teams/models/message.dart';

class ChatCard extends StatelessWidget {
  final bool isActive;
  final Message chat;
  final VoidCallback press;

  const ChatCard({Key key, this.isActive, this.chat, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 70,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : const Color(0xFFf0f0f0),

              // border: isActive
              //     ? Border.all(color: Color(0xFF7BA9DA).withOpacity(0.2))
              //     : Border.symmetric(),
              // borderRadius: isActive
              //     ? BorderRadius.circular(10)
              //     : BorderRadius.circular(0),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: kDefaultPadding / 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(chat.sender.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )),
                            ),
                            // Spacer(),
                            Text(chat.time,
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          chat.text,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: 12,
                                color: kTextColor,
                              ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // if (!chat.)
          //   Positioned(
          //     right: 8,
          //     top: 8,
          //     child: Container(
          //       height: 12,
          //       width: 12,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: kBadgeColor,
          //       ),
          //     ).addNeumorphism(
          //       blurRadius: 4,
          //       borderRadius: 8,
          //       offset: Offset(2, 2),
          //     ),
          //   ),
          // if (chat.tagColor != null)
          //   Positioned(
          //     left: 8,
          //     top: 0,
          //     child: WebsafeSvg.asset(
          //       "assets/Icons/Markup filled.svg",
          //       height: 18,
          //       color: chat.tagColor,
          //     ),
          //   )
        ],
      ),
    );
  }
}

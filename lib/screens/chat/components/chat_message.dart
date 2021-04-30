import 'package:flutter/material.dart';
import 'package:ms_teams/models/message.dart';

class ChatMessage extends StatelessWidget {
  final Message message;
  final bool isMe;

  const ChatMessage({Key key, this.message, this.isMe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Container msg = Container(
      margin: isMe
          ? const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20)
          : const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              right: 20,
              left: 80.0,
            ),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: isMe ? Colors.white : const Color(0xFFe4e5f0),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            message.text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return Row(
        children: [
          msg,
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        msg,
        // Expanded(
        //   child: IconButton(
        //     icon: message.isLiked
        //         ? Icon(Icons.favorite)
        //         : Icon(Icons.favorite_border),
        //     iconSize: 30.0,
        //     color: message.isLiked
        //         ? Theme.of(context).primaryColor
        //         : Colors.blueGrey,
        //     onPressed: () {},
        //   ),
        // )
      ],
    );
  }
}

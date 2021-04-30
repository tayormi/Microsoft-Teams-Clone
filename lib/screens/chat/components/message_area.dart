import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ms_teams/constants.dart';

class MessageArea extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final containerbdColor = useState(Colors.white);
    final txtFocusNode = useFocusNode();
    txtFocusNode.addListener(() {
      containerbdColor.value =
          txtFocusNode.hasFocus ? kPrimaryColor : Colors.white;
    });
    return ClipPath(
      clipper: const ShapeBorderClipper(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 50.0,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: containerbdColor.value, width: 1.5)),
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                focusNode: txtFocusNode,
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value) {},
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration.collapsed(
                    hintText: 'Type a new message...',
                    hintStyle: TextStyle(fontSize: 12)),
              ),
            ),
            IconButton(
              icon: const Icon(FluentIcons.send_24_regular),
              iconSize: 15.0,
              color: kPrimaryColor.withOpacity(0.8),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

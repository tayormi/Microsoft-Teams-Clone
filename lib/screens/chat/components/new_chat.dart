import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ms_teams/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'message_area.dart';

class NewChat extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final containerbdColor = useState(Colors.white);
    final txtFocusNode = useFocusNode();
    txtFocusNode.addListener(() {
      containerbdColor.value =
          txtFocusNode.hasFocus ? kPrimaryColor : Colors.white;
    });
    return Scaffold(
      body: Container(
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
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: containerbdColor.value, width: 1.5))),
                child: Row(
                  children: [
                    const Text(
                      'To:',
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        color: Color(0xFF373737),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: TextField(
                        focusNode: txtFocusNode,
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (value) {},
                        cursorColor: kPrimaryColor,
                        decoration: const InputDecoration.collapsed(
                            hintText: 'Enter name, email, group or tag',
                            hintStyle: TextStyle(fontSize: 12)),
                      ),
                    ),

                    const Spacer(),
                    WebsafeSvg.asset(
                      "assets/Icons/Angle down.svg",
                      width: 16,
                      color: Colors.black54,
                    ),
                    // Container(
                    //   width: 80,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: const Color(0xFFd1d1d1)),
                    //       borderRadius: BorderRadius.circular(5)),
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Icon(FluentIcons.video_16_regular,
                    //                 color: const Color(0xFF242424)
                    //                     .withOpacity(0.5)),
                    //           ],
                    //         ),
                    //       ),
                    //       const VerticalDivider(),
                    //       Expanded(
                    //         child: Column(
                    //           children: [
                    //             Icon(FluentIcons.call_16_regular,
                    //                 color: const Color(0xFF242424)
                    //                     .withOpacity(0.5)),
                    //           ],
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              const Spacer(),
              MessageArea()
            ],
          ),
        ),
      ),
    );
  }
}

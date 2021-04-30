import 'package:flutter/material.dart';

import '../constants.dart';

class SideMenuItem extends StatelessWidget {
  final bool isActive, isHover, showBorder;
  final int itemCount;
  final IconData icon;
  final String title;
  final VoidCallback press;

  const SideMenuItem(
      {Key key,
      this.isActive,
      this.isHover,
      this.showBorder,
      this.itemCount,
      @required this.icon,
      @required this.title,
      @required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: press,
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: isActive ? kBgDarkColor : kPrimaryColor,
              border: isActive
                  ? const Border(
                      left: BorderSide(width: 5, color: Colors.white))
                  : const Border.symmetric()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: isActive ? Colors.white : kGrayColor,
              ),
              // WebsafeSvg.asset(
              //   "assets/Icons/Angle right.svg",
              //   width: 15,
              // ),
              const SizedBox(height: kDefaultPadding / 6),
              Text(title,
                  style: TextStyle(
                      color: (isActive || isHover) ? Colors.white : kGrayColor,
                      fontSize: 14)),
            ],
          ),
        ));
  }
}

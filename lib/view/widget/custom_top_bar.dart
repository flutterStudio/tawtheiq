import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 3,
            child: Row(
              children: [Icon(Icons.calendar_today_rounded), Text("22/7/2021")],
            )),
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            "assets/icons/logo.svg",
            height: 40,
          ),
        ),
        Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                CircleAvatar(
                  child: Text("WB"),
                )
              ],
            )),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}

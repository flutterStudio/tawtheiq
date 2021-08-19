import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        children: [Icon(Icons.calendar_today_rounded), Text("22/7/2021")],
      ),
      leadingWidth: MediaQuery.of(context).size.width * 0.4,
      centerTitle: true,
      title: SvgPicture.asset(
        "assets/icons/logo.svg",
        height: 40,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        CircleAvatar(
          child: Text("WC"),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Text(
              "#123123",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              "Pending review",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Public",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu))
          ],
        ));
  }
}

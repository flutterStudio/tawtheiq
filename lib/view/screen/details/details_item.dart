import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/screen/details/linear_indicator.dart';
import 'package:tawtheiq/view/widget/spacer_widget.dart';

class DetailsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.surface),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "#123123",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "Pending review",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  "Public",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Theme.of(context).colorScheme.secondaryVariant,
                    ))
              ],
            ),
            Text(
              "Lorem ipsum dolor sit amet consetetur…  sadipscing elitr, sed diam nonumy eirmod tempor ",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              maxLines: 1,
            ),
            SpacerWidget.vertical(),
            Text(
              "06/07/2021",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            SpacerWidget.vertical(
              size: 10,
            ),
            LinearIndicator(
              secondValue: 0.3,
              firstValue: 0.5,
            )
          ],
        ));
  }
}

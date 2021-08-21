import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/screen/details/details_item.dart';

class DetailsSCreen extends StatefulWidget {
  @override
  _DetailsSCreenState createState() => _DetailsSCreenState();
}

class _DetailsSCreenState extends State<DetailsSCreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20, itemBuilder: (context, index) => DetailsItem());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/mixins/main_content_mixin.dart';
import 'package:tawtheiq/view/screen/details/details_item.dart';

class DetailsSCreen extends StatefulWidget {
  @override
  _DetailsSCreenState createState() => _DetailsSCreenState();
}

class _DetailsSCreenState extends State<DetailsSCreen>
    with MainContent, TickerProviderStateMixin {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget body() {
    return ListView(
      children: [DetailsItem()],
    );
  }
}

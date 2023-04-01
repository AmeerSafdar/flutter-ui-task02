// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'text_widget.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget(
      {super.key,
      required this.tapped,
      required this.txt,
      required this.icons});
  VoidCallback tapped;
  String txt;
  Icon icons;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icons,
      onTap: tapped,
      title: TextsWidgets(
        data: txt,
      ),
    );
  }
}

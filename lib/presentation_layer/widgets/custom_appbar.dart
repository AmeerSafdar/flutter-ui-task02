// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../helper/constant/color_helper.dart';
import '../../helper/constant/dimension.dart';
import 'text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, required this.txt});
  String txt;
  @override
  Size get preferredSize => const Size.fromHeight(Dimensions.D_55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: HexColor(SECONDARY_COLOR),
      shadowColor: HexColor(PRIMARY_COLOR),
      elevation: Dimensions.D_10,
      title: TextsWidgets(
        data: txt,
        styles: Theme.of(context).textTheme.titleMedium,
      ),
      centerTitle: true,
    );
  }
}

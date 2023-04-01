// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../../helper/constant/icons_helper.dart';
import '../../presentation_layer/widgets/text_widget.dart';
import '../../helper/constant/image_helper.dart';
import '../../helper/constant/string_helper.dart';
import 'list_tile_widget.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          decoration:
              BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
          child: Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(ImageHelper.picture),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(child: TextsWidgets(data: StringHelper.RANDOM_EMAIL)),
            ],
          ),
        ),
        ListTileWidget(
          tapped: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/");
          },
          txt: StringHelper.HOME_SCREEN,
          icons: IconHelper.HOME_ICON,
        ),
        ListTileWidget(
          tapped: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/product");
          },
          txt: StringHelper.PRODUCT_SCREEN,
          icons: IconHelper.PRODUCT_SCREEN_ICON,
        ),
        ListTileWidget(
          tapped: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/chat");
          },
          txt: StringHelper.CHAT_SCREEN,
          icons: IconHelper.CHAT_ICON,
        ),
      ],
    ));
  }
}

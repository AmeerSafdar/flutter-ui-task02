// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/icons_helper.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/constant/string_helper.dart';
import '../../../../helper/utils/size_config.dart';
import '../../../widgets/sized_box_widget.dart';
import '../../../widgets/text_widget.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_10,
          width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_13,
          child: IconHelper.CHAT_SCREEN_ICON,
          decoration:
              BoxDecoration(color: HexColor(K_WHITE), shape: BoxShape.circle),
        ),
        TextsWidgets(
          data: StringHelper.HI,
          styles:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),
        ),
        SizedBoxWidgets(
          heights: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_1,
        ),
        TextsWidgets(
            data: StringHelper.WELCOME_TEXT,
            styles: Theme.of(context).textTheme.displaySmall)
      ],
    );
  }
}

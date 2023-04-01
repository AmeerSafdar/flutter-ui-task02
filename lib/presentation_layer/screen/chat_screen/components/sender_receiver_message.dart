// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/image_helper.dart';

import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/constant/string_helper.dart';
import '../../../../helper/utils/size_config.dart';
import '../../../widgets/text_widget.dart';

class SenderMessage extends StatelessWidget {
  const SenderMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(Dimensions.RADIUS_DEFAULT),
              topLeft: Radius.circular(Dimensions.RADIUS_DEFAULT))),
      color: HexColor(PRIMARY_COLOR),
      borderOnForeground: true,
      child: Container(
        width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_50,
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_SMALL,
            vertical: Dimensions.PADDING_SIZE_SMALL),
        child: TextsWidgets(
          data: StringHelper.SENDER_MSG,
          maxliness: 4,
          styles:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}

class ReceiverWidget extends StatelessWidget {
  const ReceiverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: Dimensions.D_25,
              backgroundImage: AssetImage(ImageHelper.picture),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextsWidgets(
                    data: "Isla",
                    styles: Theme.of(context).textTheme.titleSmall,
                  ),
                  TextsWidgets(
                    data: "1m ago",
                    styles: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: Dimensions.PADDING_SIZE_LARGE),
          child: Container(
            width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_54,
            child: Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.RADIUS_DEFAULT),
                      topRight: Radius.circular(Dimensions.RADIUS_DEFAULT))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                child: TextsWidgets(
                  maxliness: 3,
                  data:
                      "Hi, Could you please tell me more about your subscription offer?",
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

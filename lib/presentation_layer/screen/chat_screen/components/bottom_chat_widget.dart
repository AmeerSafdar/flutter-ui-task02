import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/string_helper.dart';

import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/icons_helper.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/utils/size_config.dart';

class BottomChatWidget extends StatelessWidget {
  const BottomChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Dimensions.D_10,
      left: Dimensions.D_5,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
                left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
            width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
                color: HexColor(K_WHITE),
                boxShadow: [
                  BoxShadow(
                    color: HexColor(K_BLACK),
                    blurRadius: 1,
                    offset: const Offset(1, 1),
                  ),
                ]),
            child: TextField(
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: Dimensions.D_14),
              decoration: InputDecoration(
                hintText: StringHelper.REPLY_HINT,
                hintStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: Dimensions.D_16),
                contentPadding: const EdgeInsets.all(Dimensions.D_10),
              ),
            ),
          ),
          bottomImage(IconHelper.EMOJI_ICON),
          bottomImage(IconHelper.GALLERY_ICON),
          bottomImage(IconHelper.LINK_ICON),
          bottomImage(IconHelper.SEND_ICON),
        ],
      ),
    );
  }

  Container bottomImage(Icon icons) {
    return Container(padding: const EdgeInsets.only(left: 3), child: icons);
  }
}

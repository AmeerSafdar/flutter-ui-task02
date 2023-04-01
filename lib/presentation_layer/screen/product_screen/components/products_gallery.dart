import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/screen_percentage.dart';
import 'package:task0_2/helper/utils/size_config.dart';

import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/image_helper.dart';
import '../../../../helper/constant/string_helper.dart';
import '../../../widgets/text_widget.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.PADDING_SIZE_SMALL,
          top: Dimensions.PADDING_SIZE_SMALL),
      child: Wrap(
        spacing: Dimensions.D_5,
        children: [
          imageProduct(ImageHelper.P1, StringHelper.WASH, context),
          imageProduct(ImageHelper.P2, StringHelper.IRON, context),
          imageProduct(ImageHelper.P3, StringHelper.DRY_CLEAN, context)
        ],
      ),
    );
  }

  Column imageProduct(
      String imgPath, String productDesc, BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: HexColor(SKY_BLUE),
            boxShadow: [
              BoxShadow(
                color: HexColor(K_BLACK),
                blurRadius: 1,
                offset: const Offset(1, 4),
              ),
              BoxShadow(
                color: HexColor(K_WHITE),
                blurRadius: 1,
                offset: const Offset(1, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
          ),
          height: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_9,
          width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_16,
          child: Image.asset(imgPath),
        ),
        Container(
          padding: const EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
          child: TextsWidgets(
              data: productDesc,
              styles: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                  fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}

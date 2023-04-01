// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/utils/size_config.dart';
import '../../../../models/product_model.dart';
import '../../../widgets/sized_box_widget.dart';
import '../../../widgets/text_widget.dart';
import 'product_description.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            if (index == 0)
              SizedBoxWidgets(
                heights:
                    SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_3,
              ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_SMALL),
              height: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_19,
              decoration: decoratedContainer(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: SizeConfig.screenHeight *
                          ScreenPercentage.SCREEN_SIZE_20,
                      width: SizeConfig.screenWidth *
                          ScreenPercentage.SCREEN_SIZE_30,
                      padding: EdgeInsets.symmetric(
                          vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: HexColor(K_BLACK),
                              blurRadius: 1,
                              offset: const Offset(1, 2),
                            ),
                          ],
                          color: HexColor(PRIMARY_COLOR),
                          borderRadius:
                              BorderRadius.circular(Dimensions.RADIUS_SMALL)),
                      child: Image.asset(
                        productList[index].imgPath!,
                        fit: BoxFit.contain,
                      )),
                  FittedBox(
                      child: ProductDescriptionWidget(
                          product: productList[index])),
                  Padding(
                    padding:
                        EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
                    child: TextsWidgets(
                      data: "(${productList[index].price})",
                      styles: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: Dimensions.FONT_SIZE_SMALL,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBoxWidgets(
              heights: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_2,
            )
          ],
        );
      }),
    );
  }

  BoxDecoration decoratedContainer() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
      color: HexColor(K_WHITE),
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
        BoxShadow(
          color: HexColor(K_BLACK),
          blurRadius: 1,
          offset: const Offset(-2, -2),
        ),
        BoxShadow(
          color: HexColor(K_WHITE),
          blurRadius: 1,
          offset: const Offset(-1, -2),
        ),
      ],
    );
  }
}

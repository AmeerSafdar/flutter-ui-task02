// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../helper/constant/dimension.dart';
import '../../../../models/product_model.dart';
import '../../../widgets/text_widget.dart';
import 'products_gallery.dart';

class ProductDescriptionWidget extends StatelessWidget {
  ProductDescriptionWidget({super.key, required this.product});

  ProductModelClass product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL),
          child: TextsWidgets(
            data: product.title,
            styles: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child: FittedBox(
            child: TextsWidgets(
              data: product.subTitle,
              styles: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: Dimensions.D_11),
            ),
          ),
        ),
        const ProductImages()
      ],
    );
  }
}

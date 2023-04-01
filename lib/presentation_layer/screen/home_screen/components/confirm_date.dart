import 'package:flutter/material.dart';

import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/icons_helper.dart';
import '../../../../helper/constant/string_helper.dart';
import '../../../widgets/text_widget.dart';

class ConfirmDateWidget extends StatelessWidget {
  const ConfirmDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: Dimensions.PADDING_SIZE_DEFAULT),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: Dimensions.PADDING_SIZE_DEFAULT,
                horizontal: Dimensions.PADDING_SIZE_DEFAULT),
            child: TextsWidgets(
                data: StringHelper.PICKUP,
                styles: Theme.of(context).textTheme.titleSmall),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_LARGE),
            child: IconHelper.DATE_ICON,
          ),
        ],
      ),
    );
  }
}

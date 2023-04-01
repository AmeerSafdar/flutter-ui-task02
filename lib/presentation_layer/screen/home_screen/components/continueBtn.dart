// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/constant/string_helper.dart';
import '../../../../helper/utils/size_config.dart';
import '../../../widgets/text_widget.dart';

class ContinueBTN extends StatelessWidget {
  const ContinueBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE),
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_6,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.greenAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
            ),
            onPressed: () {},
            child: TextsWidgets(
              data: StringHelper.CONTINUE,
              styles: Theme.of(context).textTheme.displaySmall,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../bloc/blocs.dart';
import '../../../../bloc/events.dart';
import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/const.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../widgets/sized_box_widget.dart';
import '../../../widgets/text_widget.dart';

class RepeatedOftenTime extends StatelessWidget {
  const RepeatedOftenTime({
    super.key,
    required this.bloc,
  });

  final ChanginState bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE),
      decoration: BoxDecoration(
        color: HexColor(K_WHITE),
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        boxShadow: [
          BoxShadow(
            color: HexColor(K_BLACK),
            blurRadius: 1,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.PADDING_SIZE_DEFAULT,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextsWidgets(
              data: dropdownvalue,
              styles: Theme.of(context).textTheme.titleSmall,
            ),
            DropdownButton(
              underline: SizedBoxWidgets(),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: TextsWidgets(
                    data: items,
                    styles: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                dropdownvalue = newValue!;
                bloc.add(ChangeSlieValue());
              },
            ),
          ],
        ),
      ),
    );
  }
}

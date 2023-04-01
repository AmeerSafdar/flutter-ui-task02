// ignore_for_file: must_be_immutable, unused_field

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/dimension.dart';
import '../../../../helper/constant/color_helper.dart';

class DateBarPicker extends StatelessWidget {
  DateBarPicker({super.key});
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_DEFAULT,
            top: Dimensions.PADDING_SIZE_SMALL),
        child: DatePicker(
          _selectedDate.subtract(const Duration(days: 2)),
          height: 100,
          width: 80,
          initialSelectedDate: _selectedDate,
          selectionColor: HexColor(PRIMARY_COLOR),
          selectedTextColor: HexColor(K_WHITE),
          dateTextStyle: Theme.of(context).textTheme.titleLarge!,
          dayTextStyle: Theme.of(context).textTheme.titleLarge!,
          monthTextStyle: Theme.of(context).textTheme.titleLarge!,
          onDateChange: (date) {
            _selectedDate = date;
          },
        ));
  }
}

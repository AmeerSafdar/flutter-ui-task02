// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:task0_2/bloc/blocs.dart';
import '../../../../bloc/events.dart';
import '../../../../helper/constant/color_helper.dart';
import '../../../../helper/constant/dimension.dart';
import '../../../../helper/constant/screen_percentage.dart';
import '../../../../helper/utils/size_config.dart';
import '../../../widgets/sized_box_widget.dart';
import '../../../widgets/text_widget.dart';

class AvailableTimeSlots extends StatefulWidget {
  const AvailableTimeSlots({
    super.key,
    required this.bloc,
  });
  final ChanginState bloc;

  @override
  State<AvailableTimeSlots> createState() => _AvailableTimeSlotsState();
}

class _AvailableTimeSlotsState extends State<AvailableTimeSlots> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        timeSlots(context, "7am - 9pm", 0),
        timeSlots(context, "10am - 12pm", 1),
        timeSlots(context, "1am - 2pm", 2),
        SizedBoxWidgets(
          heights: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_8,
        ),
        timeSlots(context, "4pm - 6am", 3),
        timeSlots(context, "8pm - 12pm", 4)
      ],
    );
  }

  Container timeSlots(BuildContext context, String txt, int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL),
      width: SizeConfig.screenWidth * ScreenPercentage.SCREEN_SIZE_30,
      height: SizeConfig.screenHeight * ScreenPercentage.SCREEN_SIZE_6,
      child: GestureDetector(
        onTap: () {
          i = index;
          widget.bloc.add(ChangeSlieValue());
        },
        child: Container(
          decoration: BoxDecoration(
            color: i == index ? HexColor(PRIMARY_COLOR) : HexColor(K_WHITE),
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL),
            boxShadow: [
              BoxShadow(
                color: HexColor(K_BLACK),
                blurRadius: 1,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Center(
            child: TextsWidgets(
              data: txt,
              styles: i == index
                  ? Theme.of(context).textTheme.headlineMedium
                  : Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}

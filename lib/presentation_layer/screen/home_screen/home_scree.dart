// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/available_slot.dart';
import 'components/confirm_date.dart';
import 'components/continueBtn.dart';
import '../../widgets/custom_appbar.dart';
import 'components/date_bar.dart';
import 'components/how_often_repeat.dart';
import 'components/repeated_time.dart';
import '../../../bloc/events.dart';
import '../../../bloc/states.dart';
import '../../../helper/constant/color_helper.dart';
import '../../../helper/constant/screen_percentage.dart';
import '../../../helper/utils/size_config.dart';
import '../../widgets/text_widget.dart';
import '../../../bloc/blocs.dart';
import '../../../helper/constant/const.dart';
import '../../../helper/constant/dimension.dart';
import '../../../helper/constant/string_helper.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/sized_box_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ChanginState>(context);
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: CustomAppBar(
        txt: StringHelper.PICKUP_DATE,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocBuilder<ChanginState, StateChanged>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ConfirmDateWidget(),
                  DateBarPicker(),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_2,
                  ),
                  Center(
                    child: TextsWidgets(
                      data: StringHelper.AVAILABLE_SLOTS,
                      styles: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_3,
                  ),
                  Center(
                      child: AvailableTimeSlots(
                    bloc: bloc,
                  )),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_3,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    decoration: BoxDecoration(
                      color: HexColor(K_WHITE),
                      borderRadius:
                          BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                      boxShadow: [
                        BoxShadow(
                          color: HexColor(K_BLACK),
                          blurRadius: 1,
                          offset: const Offset(1, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextsWidgets(
                            data: StringHelper.REPEAT_PICKUP,
                            styles: Theme.of(context).textTheme.titleSmall,
                          ),
                          Switch(
                              value: value,
                              onChanged: (val) {
                                value = val;
                                bloc.add(ChangeSlieValue());
                              })
                        ],
                      ),
                    ),
                  ),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_3,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    child: TextsWidgets(
                      data: StringHelper.HOE_OFTEN_REPEAT,
                      styles: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_1,
                  ),
                  RepeatedOftenTime(bloc: bloc),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_3,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    child: TextsWidgets(
                      data: StringHelper.HOE_MANY_TIMES,
                      styles: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_1,
                  ),
                  TimesOfRepeat(bloc: bloc),
                  SizedBoxWidgets(
                    heights: SizeConfig.screenHeight *
                        ScreenPercentage.SCREEN_SIZE_3,
                  ),
                  const ContinueBTN()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

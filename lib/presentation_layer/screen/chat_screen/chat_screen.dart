// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/color_helper.dart';
import 'package:task0_2/helper/constant/dimension.dart';
import 'package:task0_2/helper/constant/string_helper.dart';
import 'package:task0_2/presentation_layer/widgets/drawer_widget.dart';
import 'package:task0_2/presentation_layer/widgets/text_widget.dart';

import '../../../helper/utils/size_config.dart';
import 'components/bottom_chat_widget.dart';
import 'components/custom_shape.dart';
import 'components/sender_receiver_message.dart';
import 'components/welcome_text.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor(PRIMARY_COLOR),
        iconTheme: IconThemeData(color: HexColor(K_WHITE)),
      ),
      body: Stack(
        children: [
          Positioned(
              right: Dimensions.D_10,
              top: SizeConfig.screenHeight * 0.26,
              child: SenderMessage()),
          Positioned(
            right: SizeConfig.screenWidth / 2.3,
            top: SizeConfig.screenHeight * 0.36,
            child: TextsWidgets(
              data: StringHelper.DATE_TIME,
              styles: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Positioned(
              left: Dimensions.D_10,
              top: SizeConfig.screenHeight * 0.38,
              child: ReceiverWidget()),
          Positioned(
              right: Dimensions.D_10,
              top: SizeConfig.screenHeight * 0.57,
              child: SenderMessage()),
          Positioned(
              right: Dimensions.D_10,
              top: SizeConfig.screenHeight * 0.68,
              child: SenderMessage()),
          Positioned(
            top: 0,
            child: CustomPaint(
              size: Size(SizeConfig.screenWidth,
                  (SizeConfig.screenHeight * 0.35).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ),
          Positioned(left: Dimensions.D_20, child: WelcomeText()),
          BottomChatWidget()
        ],
      ),
    );
  }
}

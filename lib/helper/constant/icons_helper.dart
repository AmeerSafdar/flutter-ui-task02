// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/dimension.dart';

class IconHelper {
  static Icon BACK_BTN_ICON = const Icon(
    Icons.arrow_back_rounded,
  );
  static Icon PRODUCT_SCREEN_ICON = const Icon(
    Icons.check_box,
  );
  static Icon HOME_ICON = const Icon(
    Icons.home,
  );
  static Icon CHAT_ICON = const Icon(
    Icons.chat,
  );

  static Icon DATE_ICON = const Icon(
    Icons.date_range_rounded,
    size: Dimensions.D_35,
  );

  static Icon EMOJI_ICON = const Icon(Icons.emoji_emotions_outlined);
  static Icon GALLERY_ICON = const Icon(Icons.image_outlined);
  static Icon LINK_ICON = const Icon(Icons.link_sharp);
  static Icon SEND_ICON = const Icon(Icons.send);
  static Icon CHAT_SCREEN_ICON =
      const Icon(Icons.miscellaneous_services_outlined);
}

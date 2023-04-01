// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task0_2/helper/constant/string_helper.dart';
import 'package:task0_2/presentation_layer/widgets/drawer_widget.dart';

import '../../widgets/custom_appbar.dart';
import 'components/product_list.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: CustomAppBar(
        txt: StringHelper.PACKAGE,
      ),
      body: SafeArea(
        child: ProductsList(),
      ),
    );
  }
}

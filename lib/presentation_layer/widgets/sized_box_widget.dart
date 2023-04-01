// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SizedBoxWidgets extends StatelessWidget {
  SizedBoxWidgets({super.key, this.heights, this.widths});

  double? heights, widths;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heights,
      width: widths,
    );
  }
}

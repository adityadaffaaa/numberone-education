import 'package:flutter/material.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/images.dart' as app_img;

PreferredSizeWidget? customAppBar(
  BuildContext context,
  bool isPurple,
) {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 80,
    leading: Icon(
      Icons.arrow_back,
      color: Colors.white.withOpacity(0),
    ),
    backgroundColor: app_color.white,
    elevation: 0,
    flexibleSpace: Image.asset(
      isPurple ? app_img.imgAppbarCustomPurple : app_img.imgAppbarCustom,
      fit: BoxFit.cover,
    ),
  );
}

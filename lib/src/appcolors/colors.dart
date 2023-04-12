import 'package:flutter/material.dart';

import 'appcolors.dart';

class AppTheme {
  static final colors = AppColor();
  static ThemeData define() {
    return ThemeData(
        primaryColor: const Color(0XFFFFFFFF),
        focusColor: const Color(0XFFFFFFFF),
        scaffoldBackgroundColor: const Color(0XFFFFFFFF));
  }
}

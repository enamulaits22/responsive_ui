import 'package:flutter/material.dart';

enum ScreenSize {mobile, tab}

ScreenSize getScreenSize (BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width >= 576) return ScreenSize.tab;
  return ScreenSize.mobile;
}

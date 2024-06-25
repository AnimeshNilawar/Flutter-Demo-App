import 'package:demo_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class DemoSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DemoSizes.appBarHeight,
    bottom: DemoSizes.defaultSpace,
    left: DemoSizes.defaultSpace,
    right: DemoSizes.defaultSpace,
  );
}
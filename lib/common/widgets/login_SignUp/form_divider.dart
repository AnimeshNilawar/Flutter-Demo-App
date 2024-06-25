import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoFormDivider extends StatelessWidget {
  const DemoFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? DemoColors.darkGrey : DemoColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(DemoTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? DemoColors.darkGrey : DemoColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}

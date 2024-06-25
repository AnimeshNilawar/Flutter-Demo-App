import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DemoLoginHeader extends StatelessWidget {
  const DemoLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? DemoImages.lightAppLogo : DemoImages.darkAppLogo),
        ),
        Text(DemoTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: DemoSizes.sm,
        ),
        Text(DemoTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

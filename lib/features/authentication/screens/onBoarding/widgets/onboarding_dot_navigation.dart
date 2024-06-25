import 'package:demo_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/device/device_utility.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);
    final controller = onBoardingController.instance;

    return Positioned(
      bottom: DemoDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: DemoSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? DemoColors.light : DemoColors.dark,
            dotHeight: 6),
      ),
    );
  }
}

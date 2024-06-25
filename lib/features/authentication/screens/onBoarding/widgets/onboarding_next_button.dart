import 'package:demo_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/device/device_utility.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);


    return Positioned(
      right: DemoSizes.defaultSpace,
      bottom: DemoDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => onBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? DemoColors.primary: Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

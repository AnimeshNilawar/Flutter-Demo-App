import 'package:demo_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DemoDeviceUtils.getAppBarHeight(),
      right: DemoSizes.defaultSpace,
      child: TextButton(
        onPressed: () => onBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

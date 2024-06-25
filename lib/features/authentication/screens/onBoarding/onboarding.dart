import 'package:demo_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:demo_app/features/authentication/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:demo_app/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:demo_app/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'widgets/onboarding_next_button.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: DemoImages.onBoardingImage1,
                title: DemoTexts.onBoardingTitle1,
                subTitle: DemoTexts.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: DemoImages.onBoardingImage2,
                title: DemoTexts.onBoardingTitle2,
                subTitle: DemoTexts.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: DemoImages.onBoardingImage3,
                title: DemoTexts.onBoardingTitle3,
                subTitle: DemoTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip Button
          const onBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const onBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


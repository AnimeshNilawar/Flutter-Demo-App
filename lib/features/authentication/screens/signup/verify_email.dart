import 'package:demo_app/common/widgets/success_screen/success_screen.dart';
import 'package:demo_app/features/authentication/screens/login/login.dart';
import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DemoSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(DemoImages.deliveredEmailIllustration),
                width: DemoHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: DemoSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(DemoTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DemoSizes.spaceBtwItems),
              Text('support@demo.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: DemoSizes.spaceBtwItems),
              Text(DemoTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: DemoSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(
                            () => SuccessScreen(
                              title: DemoTexts.yourAccountCreatedTitle,
                              subTitle: DemoTexts.yourAccountCreatedSubTitle,
                              image: DemoImages.staticSuccessIllustration,
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                            ),
                          ),
                      child: const Text(DemoTexts.tContinue))),
              const SizedBox(height: DemoSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(DemoTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}

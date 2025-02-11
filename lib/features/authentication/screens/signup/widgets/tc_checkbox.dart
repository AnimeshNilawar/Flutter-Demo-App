import 'package:demo_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoTermsANDConditions extends StatelessWidget {
  const DemoTermsANDConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = signupController.instance;

    final dark = DemoHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value),
            )),
        const SizedBox(width: DemoSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${DemoTexts.iAgreeTo}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${DemoTexts.privacyPolicy}',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? DemoColors.white : DemoColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? DemoColors.white : DemoColors.primary,
                      )),
              TextSpan(
                  text: '${DemoTexts.and}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${DemoTexts.termsOfUse}',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? DemoColors.white : DemoColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? DemoColors.white : DemoColors.primary,
                      )),
            ],
          ),
        ),
      ],
    );
  }
}

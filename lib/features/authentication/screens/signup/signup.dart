import 'package:demo_app/common/widgets/login_SignUp/form_divider.dart';
import 'package:demo_app/common/widgets/login_SignUp/social_buttons.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DemoSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(DemoTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: DemoSizes.spaceBtwSections),

              /// Form
              const SIgnUpWidget(),

              const SizedBox(height: DemoSizes.spaceBtwInputFields),

              /// Divider
              DemoFormDivider(dividerText: DemoTexts.orSignUpWith.capitalize!),

              const SizedBox(height: DemoSizes.spaceBtwInputFields),

              /// Social Buttons
              const DemoSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


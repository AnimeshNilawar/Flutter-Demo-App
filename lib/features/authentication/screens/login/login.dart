import 'package:demo_app/common/styles/spacing_style.dart';
import 'package:demo_app/common/widgets/login_SignUp/form_divider.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/login_Header.dart';
import '../../../../common/widgets/login_SignUp/social_buttons.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DemoHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: DemoSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// LOGO, Title & Sub-Title
              const DemoLoginHeader(),

              /// FORM
              const DemoLoginForm(),

              /// Divider
              DemoFormDivider(dividerText: DemoTexts.orSignInWith.capitalize!),
              const SizedBox(height: DemoSizes.spaceBtwSections),

              /// Footer
              const DemoSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}




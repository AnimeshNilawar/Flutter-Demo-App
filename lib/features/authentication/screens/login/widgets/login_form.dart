import 'package:demo_app/features/authentication/screens/signup/signup.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DemoLoginForm extends StatelessWidget {
  const DemoLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: DemoSizes.spaceBtwSections),
        child: Column(
          children: [
            /// EMAIL
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: DemoTexts.email),
            ),
            const SizedBox(height: DemoSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: DemoTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: DemoSizes.spaceBtwInputFields / 2),

            /// REMEMBER ME & FORGET ME
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(DemoTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () {},
                    child: const Text(DemoTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: DemoSizes.spaceBtwSections),

            /// SignIn Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(DemoTexts.signIn))),

            const SizedBox(height: DemoSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(DemoTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
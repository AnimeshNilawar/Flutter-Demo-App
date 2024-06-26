import 'package:demo_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:demo_app/features/authentication/screens/signup/verify_email.dart';
import 'package:demo_app/features/authentication/screens/signup/widgets/tc_checkbox.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/constants/text_strings.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:demo_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SIgnUpWidget extends StatelessWidget {
  const SIgnUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(signupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      DemoValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: DemoTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: DemoSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      DemoValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: DemoTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// UserName
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                DemoValidator.validateEmptyText('UserName', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: DemoTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => DemoValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: DemoTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),

          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => DemoValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: DemoTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),

          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => DemoValidator.validatePassword(value),
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: DemoTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),

          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// T&C Checkbox
          DemoTermsANDConditions(),
          const SizedBox(height: DemoSizes.spaceBtwInputFields),

          /// SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(DemoTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}

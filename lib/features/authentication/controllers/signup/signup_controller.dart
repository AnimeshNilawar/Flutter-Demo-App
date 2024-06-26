import 'package:demo_app/data/repositories/User_repository.dart';
import 'package:demo_app/data/repositories/authentication/authentication_repository.dart';
import 'package:demo_app/features/authentication/screens/signup/verify_email.dart';
import 'package:demo_app/features/personalization/models/user_model.dart';
import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/device/networkManager.dart';
import 'package:demo_app/utils/popups/full_screen_loader.dart';
import 'package:demo_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupController extends GetxController {
  static signupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observe the password visibility
  final privacyPolicy = true.obs; // Observe the privacy policy checkbox
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for lastName input
  final userName = TextEditingController(); // Controller for userName input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for firstName input
  final phoneNumber =
      TextEditingController(); // Controller for phoneNumber input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  /// --Signup
  void signup() async {
    try {
      // Start Loading
      DemoFullScreenLoader.openLoadingDialog('We are processing your information...', DemoImages.deliveredEmailIllustration);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if(!signupFormKey.currentState!.validate()) return;

      //Privacy Policy Check
      if(!privacyPolicy.value){
        DemoLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message: 'In order to create account, you must accept the Privacy Policy and Terms of Use'
        );
        return;
      }
      
      
      //Register User in firebase authentication & save user data in firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());
      //save authenticated user data in firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //show success message
      DemoLoaders.SuccessSnackBar(title: 'Congratulations',message: 'Your account has been create! Verify email to continue');

      //move to verify login screen
      Get.to(() => const VerifyEmailScreen());



    } catch (e) {
      DemoLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());

    } finally {
      DemoFullScreenLoader.stopLoading();
    }
  }
}

import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/device/networkManager.dart';
import 'package:demo_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupController extends GetxController {
  static signupController get instance => Get.find();

  /// Variables
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
  Future<void> signup() async {
    try {
      // Start Loading
      DemoFullScreenLoader.openLoadingDialog('We are processing your information.....', DemoImages.deliveredEmailIllustration);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        DemoFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if(!signupFormKey.currentState!.validate()){
        DemoFullScreenLoader.stopLoading();
        return;
      }

      //Privacy Policy Check
      //Register User in firebase authentication & save user data in firebase
      //save authenticated user data in firebase Firestore
      //show success message
      //move to verify login screen






    } catch (e) {


    } finally {}
  }
}

import 'package:demo_app/features/authentication/screens/login/login.dart';
import 'package:demo_app/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:demo_app/utils/exceptions/firebase_auth_exception.dart';
import 'package:demo_app/utils/exceptions/firebase_exception.dart';
import 'package:demo_app/utils/exceptions/format_exceptions.dart';
import 'package:demo_app/utils/exceptions/platform_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Functions to Show Relevant Screen
  void screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const onBoardingScreen());
  }

  /// Email Authentication - Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      throw DemoFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw DemoFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const DemoFormatException();
    }on PlatformException catch (e){
      throw DemoPlatformException(e.code).message;
    }catch (e){
      throw 'Something Went wrong. Please try again';
    }

}


}

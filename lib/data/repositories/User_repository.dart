import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_app/features/personalization/models/user_model.dart';
import 'package:demo_app/utils/exceptions/firebase_exception.dart';
import 'package:demo_app/utils/exceptions/format_exceptions.dart';
import 'package:demo_app/utils/exceptions/platform_exception.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try{
      final userJson = user.toJson();
      print('Saving user: $userJson');
      await _db.collection("Users").doc(user.id).set(userJson);
    } on FirebaseException catch (e) {
      throw DemoFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const DemoFormatException();
    } on PlatformException catch (e){
      throw DemoPlatformException(e.code).message;
    } catch (e) {
      throw ' Something went wrong. Please try again';
    }
  }


}
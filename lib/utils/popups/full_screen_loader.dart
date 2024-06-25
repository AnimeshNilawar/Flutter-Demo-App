import 'package:demo_app/common/widgets/loaders/animation_loader.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: DemoHelperFunctions.isDarkMode(Get.context!) ? DemoColors.dark : DemoColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              DemoAnimationLoaderWidget(text: text, animation: animation,),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}

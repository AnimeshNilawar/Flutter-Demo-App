import 'package:demo_app/utils/constants/sizes.dart';
import 'package:demo_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DemoSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: DemoHelperFunctions.screenWidth() * 0.8,
            height: DemoHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: DemoSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
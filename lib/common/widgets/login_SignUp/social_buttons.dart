import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/constants/image_strings.dart';
import 'package:demo_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class DemoSocialButtons extends StatelessWidget {
  const DemoSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DemoColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: DemoSizes.iconMd,
                height: DemoSizes.iconMd,
                image: AssetImage(DemoImages.google)),
          ),
        ),
        const SizedBox(width: DemoSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: DemoColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: DemoSizes.iconMd,
                height: DemoSizes.iconMd,
                image: AssetImage(DemoImages.facebook)),
          ),
        ),
      ],
    );
  }
}
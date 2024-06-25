import 'package:demo_app/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:demo_app/utils/constants/colors.dart';
import 'package:demo_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: DemoAppTheme.lightTheme,
      darkTheme: DemoAppTheme.darkTheme,
      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show the relevant screen
      home: const Scaffold(backgroundColor: DemoColors.primary, body: Center(child: CircularProgressIndicator(color: DemoColors.white))),
    );
  }
}

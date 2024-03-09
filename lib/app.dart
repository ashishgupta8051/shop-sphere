import 'package:ShopSphere/features/authentication/screens/onboarding/onboard_screen.dart';
import 'package:ShopSphere/navigation_menu.dart';
import 'package:ShopSphere/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      // home: const OnBoardingScreen(),
      home: const NavigationMenu(),
    );
  }
}
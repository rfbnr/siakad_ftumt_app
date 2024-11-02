import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/components/custom_page_transition.dart';
import 'core/constants/colors.dart';
import 'features/login/screens/login_screen.dart';

class SiakadApp extends StatelessWidget {
  const SiakadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SIAKAD FTUMT",
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CustomCupertinoPageTransition(),
            TargetPlatform.iOS: CustomCupertinoPageTransition(),
          },
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: const LoginScreen(),
    );
  }
}

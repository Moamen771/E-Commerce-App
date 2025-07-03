import 'package:flutter/material.dart';
import 'core/routing/app_routes.dart';
import 'core/routing/routes.dart';
import 'core/utlis/app_colors.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E- Commerce App',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: AppRoutes.onboardingRoute,
    );
  }
}

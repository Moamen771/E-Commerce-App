import 'package:flutter/material.dart';
import 'core/route_helpers/app_routes.dart';
import 'core/route_helpers/routes.dart';
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
      initialRoute: AppRoutes.initialRoute,
    );
  }
}

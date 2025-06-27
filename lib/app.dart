import 'package:ecommerce/core/utlis/route_helpers/app_routes.dart';
import 'package:flutter/material.dart';
import 'core/utlis/app_colors.dart';
import 'core/utlis/route_helpers/routes.dart';

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

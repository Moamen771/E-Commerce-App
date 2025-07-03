import 'package:ecommerce/features/auth/ui/views/forget_password_view.dart';
import 'package:flutter/material.dart';
import '../../../features/auth/ui/views/login_view.dart';
import '../../../features/auth/ui/views/onboarding_view.dart';
import '../../../features/auth/ui/views/signup_view.dart';
import 'app_routes.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.onboardingRoute:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case AppRoutes.signupRoute:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case AppRoutes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Screen Not Found'))),
        );
    }
  }
}

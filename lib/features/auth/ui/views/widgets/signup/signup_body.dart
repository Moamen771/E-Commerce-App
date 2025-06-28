import 'package:ecommerce/core/utlis/app_assets.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/signup/signup_form_and_signup_button.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utlis/app_colors.dart';
import '../../../../../../core/utlis/route_helpers/app_routes.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppAssets.onboardingLogo),
              const SizedBox(height: 30),
              const SignupFormAndSignButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an acc?',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginRoute);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

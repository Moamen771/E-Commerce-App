import 'package:ecommerce/core/utlis/app_colors.dart';
import 'package:ecommerce/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/route_helpers/app_routes.dart';
import 'onboarding_secrtion.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const OnboardingSection(),
              AppButton(
                text: 'Sign up',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signupRoute);
                },
              ),
              const SizedBox(height: 16),
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

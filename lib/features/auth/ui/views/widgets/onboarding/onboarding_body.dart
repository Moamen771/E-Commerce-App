import 'package:ecommerce/core/extensions/navigation.dart';
import 'package:ecommerce/core/widgets/app_button.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/account_checker_row.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/routing/app_routes.dart';
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
                  context.pushNamed(AppRoutes.signupRoute);
                },
              ),
              const AccountCheckerRow(title: 'Login', replacement: false),
            ],
          ),
        ),
      ),
    );
  }
}

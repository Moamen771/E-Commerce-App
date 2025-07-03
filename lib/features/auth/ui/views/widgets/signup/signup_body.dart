import 'package:ecommerce/core/utlis/app_assets.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/account_checker_row.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/signup/signup_form_and_signup_button.dart';
import 'package:flutter/material.dart';

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
              const AccountCheckerRow(title: 'Login', replacement: true),
            ],
          ),
        ),
      ),
    );
  }
}

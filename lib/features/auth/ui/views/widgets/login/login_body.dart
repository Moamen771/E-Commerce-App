import 'package:ecommerce/core/utlis/app_assets.dart';
import 'package:ecommerce/core/widgets/app_button.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/account_checker_row.dart';
import 'package:ecommerce/features/auth/ui/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../remember_me_and_forget_password.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.onboardingLogo),
            const SizedBox(height: 30),
            const CustomTextFormField(
              title: 'Email / phone number',
              hintText: 'Jhonsmith@gmail.com',
              obscureText: false,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              title: 'Password',
              hintText: '******',
              obscureText: true,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 16),
            const RememberMeAndForgetPassword(),
            const SizedBox(height: 24),
            AppButton(text: 'Login', onTap: () {}),
            const AccountCheckerRow(title: 'Sign up'),
          ],
        ),
      ),
    );
  }
}

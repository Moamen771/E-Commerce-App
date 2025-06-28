import 'package:flutter/material.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../custom_text_form_field.dart';

class SignupFormAndSignButton extends StatelessWidget {
  const SignupFormAndSignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 24,
      children: [
        const CustomTextFormField(
          text: 'Username',
          hintText: 'Ziad emad',
          obscureText: false,
        ),
        const CustomTextFormField(
          text: 'Email',
          hintText: 'Jhonsmith@gmail.com',
          obscureText: false,
        ),
        const CustomTextFormField(
          text: 'Your address',
          hintText: 'portsaeed street',
          obscureText: false,
        ),
        const CustomTextFormField(
          text: 'Password',
          hintText: '*******',
          obscureText: true,
        ),
        const CustomTextFormField(
          text: 'Confirm Password',
          hintText: '*******',
          obscureText: true,
        ),
        AppButton(text: 'Sign up', onTap: () {}),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../custom_text_form_field.dart';

class SignupFormAndSignButton extends StatelessWidget {
  const SignupFormAndSignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 24,
        children: [
          const CustomTextFormField(
            title: 'Username',
            hintText: 'Ziad emad',
            obscureText: false,
          ),
          const CustomTextFormField(
            title: 'Email',
            hintText: 'Jhonsmith@gmail.com',
            obscureText: false,
          ),
          const CustomTextFormField(
            title: 'Your address',
            hintText: 'portsaeed street',
            obscureText: false,
          ),
          CustomTextFormField(
            title: 'Password',
            hintText: '*******',
            obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_outlined),
            ),
          ),
          CustomTextFormField(
            title: 'Confirm Password',
            hintText: '*******',
            obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_outlined),
            ),
          ),
          AppButton(text: 'Sign up', onTap: () {}),
        ],
      ),
    );
  }
}

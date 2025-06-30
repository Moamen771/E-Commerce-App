import 'package:ecommerce/core/route_helpers/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/app_colors.dart';

class RememberMeAndForgetPassword extends StatefulWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  State<RememberMeAndForgetPassword> createState() =>
      _RememberMeAndForgetPasswordState();
}

class _RememberMeAndForgetPasswordState
    extends State<RememberMeAndForgetPassword> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
          fillColor: WidgetStateProperty.all(AppColors.lightGrey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: BorderSide.none,
          ),
        ),
        const Text(
          'Remember me',
          style: TextStyle(
            color: AppColors.darkGrey,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.forgotPasswordRoute);
          },
          child: const Text(
            'Forgot password?',
            style: TextStyle(color: AppColors.orange),
          ),
        ),
      ],
    );
  }
}

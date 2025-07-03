import 'package:ecommerce/core/extensions/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/utlis/app_colors.dart';

class AccountCheckerRow extends StatelessWidget {
  const AccountCheckerRow({
    super.key,
    required this.title,
    required this.replacement,
  });

  final String title;
  final bool replacement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title == 'Login' ? 'Already have an acc?' : 'Don\'t have an acc?',
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        TextButton(
          onPressed: () {
            if (replacement) {
              title == 'Login'
                  ? context.pushReplacementNamed(AppRoutes.loginRoute)
                  : context.pushReplacementNamed(AppRoutes.signupRoute);
            } else {
              title == 'Login'
                  ? context.pushNamed(AppRoutes.loginRoute)
                  : context.pushNamed(AppRoutes.signupRoute);
            }
            ;
          },
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.orange,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

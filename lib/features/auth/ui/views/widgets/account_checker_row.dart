import 'package:flutter/material.dart';

import '../../../../../core/route_helpers/app_routes.dart';
import '../../../../../core/utlis/app_colors.dart';

class AccountCheckerRow extends StatelessWidget {
  const AccountCheckerRow({super.key, required this.title});

  final String title;

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
            title == 'Login'
                ? Navigator.pushNamed(context, AppRoutes.loginRoute)
                : Navigator.pushNamed(context, AppRoutes.signupRoute);
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

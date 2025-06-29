import 'package:flutter/material.dart';

import '../../../../../../core/utlis/app_assets.dart';

class OnboardingSection extends StatelessWidget {
  const OnboardingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.onboardingLogo, height: 33),
        Image.asset(
          AppAssets.onboardingImage,
          height: MediaQuery.of(context).size.height * 0.40,
          width: double.infinity,
        ),
        const SizedBox(height: 16),
        const Text(
          'Food quality',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 13.0, left: 13, top: 16, bottom: 40),
          child: Text(
            'Enjoy high-quality food made with fresh ingredients, rich flavors, and great attention to detail',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

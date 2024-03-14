import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../home/pages/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.push(const MainPage()),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Assets.images.logoWhite.image(),
          ),
          const Spacer(),
          Assets.images.logoCodeWithBahri.image(height: 70),
          const SpaceHeight(20.0),
        ],
      ),
    );
  }
}

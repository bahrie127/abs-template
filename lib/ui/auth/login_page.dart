import 'package:flutter/material.dart';

import '../../core/assets/assets.dart';
import '../../core/components/components.dart';
import '../../core/core.dart';
import '../home/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(18.0),
        children: [
          const SpaceHeight(50.0),
          Padding(
            padding: const EdgeInsets.all(85.0),
            child: Assets.images.logo.image(),
          ),
          const SpaceHeight(30.0),
          CustomTextField(
            showLabel: false,
            controller: emailController,
            label: 'Email Address',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.icons.email.svg(),
            ),
          ),
          const SpaceHeight(18.0),
          CustomTextField(
            showLabel: false,
            controller: passwordController,
            label: 'Password',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.icons.password.svg(),
            ),
            obscureText: true,
          ),
          const SpaceHeight(80.0),
          Button.filled(
            onPressed: () {
              context.pushReplacement(const MainPage());
            },
            label: 'Sign In',
          ),
        ],
      ),
    );
  }
}

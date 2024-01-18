import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomPrimaryButton(
          text: 'Log in',
          color: primaryBlue,
          textColor: Colors.white,
        ),
        SizedBox(height: 40),
        CustomText(
          text: 'Forgot Password',
          fontSize: 16,
          color: primaryBlue,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

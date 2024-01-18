import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignInOptions extends StatefulWidget {
  const SignInOptions({super.key});

  @override
  State<SignInOptions> createState() => _SignInOptionsState();
}

class _SignInOptionsState extends State<SignInOptions> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SocialButton(
          text: "Log in with Google",
          imageName: 'google.png',
          imgWidth: 25,
        ),
        const SizedBox(height: 20),
        const SocialButton(
          text: "Log in with Google",
          imageName: 'fb.png',
          imgWidth: 32,
        ),
        const SizedBox(height: 30),
        const CustomText(text: 'or', fontSize: 18, color: grey300),
        const CustomTextField(
          hintText: 'Enter email',
        ),
        CustomTextField(
          hintText: 'Password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined,
              color: grey300,
            ),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}

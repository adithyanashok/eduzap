import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class SignUpInputs extends StatefulWidget {
  const SignUpInputs({super.key});

  @override
  State<SignUpInputs> createState() => _SignUpInputsState();
}

class _SignUpInputsState extends State<SignUpInputs> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          hintText: 'Enter username',
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hintText: 'Enter email',
        ),
        const SizedBox(height: 20),
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
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Confirm password',
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

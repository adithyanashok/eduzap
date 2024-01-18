import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              const SizedBox(height: 50),
              const CustomText(
                text: "Welcome back! \n Sign in to continue!",
                fontSize: 26,
                color: grey900,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 120),
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
              const Spacer(),
              const CustomPrimaryButton(
                text: 'Log in',
                color: primaryBlue,
                textColor: Colors.white,
              ),
              const SizedBox(height: 40),
              const CustomText(
                text: 'Forgot Password',
                fontSize: 16,
                color: primaryBlue,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

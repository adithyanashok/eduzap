import 'package:eduzap/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            wordSpacing: 2,
            letterSpacing: 1.3,
          ),
          suffix: suffixIcon,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: grey100,
            ),
          ),
        ),
      ),
    );
  }
}

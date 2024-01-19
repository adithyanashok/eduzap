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

class CustomFilledFormField extends StatelessWidget {
  const CustomFilledFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: lightPink,
          hintText: "Graphic Illustration",
          hintStyle: GoogleFonts.plusJakartaSans(
            letterSpacing: 1,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: grey400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          suffixIcon: const Icon(
            Icons.search_outlined,
            color: grey400,
          ),
        ),
      ),
    );
  }
}

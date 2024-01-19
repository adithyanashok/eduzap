import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Hello, Adithyan!",
                      fontSize: 26,
                      color: grey900,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "What do you wanna learn today?",
                      fontSize: 14,
                      color: grey500,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    fit: BoxFit.cover,
                    width: 55,
                  ),
                )
              ],
            ),
          ),
          Padding(
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
          ),
          const Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: 'Popular category\nour  in platform',
                    fontSize: 24,
                    color: grey900,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomText(
                    text: 'see more',
                    fontSize: 14,
                    color: grey500,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.1,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryCard(
                    text: 'Coding',
                    imageName: 'coding.jpg',
                  ),
                  CategoryCard(
                    text: 'Designing',
                    imageName: 'graphic.jpg',
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String text;
  final String imageName;
  const CategoryCard({
    super.key,
    required this.text,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            'assets/images/$imageName',
            fit: BoxFit.cover,
            width: 180,
            height: 160,
          ),
        ),
        Container(
          width: 180,
          height: 160,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(1),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: CustomText(
            text: text,
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

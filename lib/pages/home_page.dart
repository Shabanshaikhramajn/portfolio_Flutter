import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/app/app_colors.dart';
import 'package:personal_portfolio/app/reusable_elevated_button.dart';
import 'package:personal_portfolio/widgets/animated_heading.dart';
import 'package:personal_portfolio/widgets/nav_bar.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const NavBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ---- Hero Section ----
                    Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 48, horizontal: Get.width *.06),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ---- Text Left Side ----
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AnimatedHeading(
                                    lines: const [
                                      "Hi, I'm ShabanAli Shaikh",
                                      "I build Flutter Apps "
                                    ],
                                  ),
                                   SizedBox(height: 24),
                                  Text('Passionate Flutter Developer with 3+ years of experience in building high-performance cross-platform mobile applications. Proficient in Dart, Firebase, and state management solutions like Bloc & Provider. Committed to writing clean, scalable code and staying updated with the latest tech trends. Open to networking and exciting opportunities in mobile development.'),
                                   SizedBox(height: 24),
                                  Wrap(
                                    spacing: 12,
                                    runSpacing: 12,
                                    children: [
                                      CustomButton(
                                        text: "Contact Me",
                                        background: AppColors.primary,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 30),
                                      CustomButton(
                                        text: "Whatsapp",
                                        background: Colors.transparent,
                                        borderColor: AppColors.primary,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // ---- Image Right Side (only desktop) ----
                            const SizedBox(width:140),
                              SizedBox(
                                height: Get.height * .7,
                                width: Get.height * .8  ,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/person.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ]

                        ),
                      ),
                    ),

                    // TODO: Projects, About, Contact sections
                    const SizedBox(height: 120),

                    const Text(
                      "Footer - Shaban Shaikh © 2025",
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

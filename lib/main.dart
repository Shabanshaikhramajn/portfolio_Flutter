import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shaban Shaikh - Portfolio',
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.interTextTheme(ThemeData(brightness: Brightness.dark).textTheme),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
      home:const HomePage(),
    );
  }
}

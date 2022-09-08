import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Colors.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor:background),
        scaffoldBackgroundColor:background,

        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accent),
        iconTheme: const IconThemeData(color: Cicons),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),


      ),
      home: FirstScreen(),
    );
  }
}

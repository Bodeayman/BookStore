import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_practise/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:mvvm_practise/constants.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //Here we create the qubit to the states
        //Create the qubit here and the widgets will access it
        //This should be the only code in the main file
        GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mainColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

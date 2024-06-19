import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile/newProfile.dart';
import 'package:flutter_application_1/Homepage/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
          primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.montserrat().fontFamily),
      initialRoute: '/',
      routes: {
        '/': (context) => MainProfile1Widget(),
      
      },
    );
  }
}
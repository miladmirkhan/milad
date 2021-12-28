import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milad/home_screen/homeScreen.dart';
import 'package:milad/login_scren/loginScreen.dart';
import 'package:milad/data_screen/dataScreen.dart';
import 'package:milad/privacy_policy/privacyPolicy.dart';
import 'package:milad/sign_in/signIn.dart';


class mainApp extends StatelessWidget {
  const mainApp({ Key? key }) : super(key: key);
final String selectedLang = 'En';
Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purpleAccent[700],
          textTheme: TextTheme(
              bodyText1: TextStyle(
            fontFamily: selectedLang == 'En'
                ? GoogleFonts.robotoCondensed().fontFamily
                : GoogleFonts.roboto().fontFamily,
          )),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.greenAccent[200],
            iconTheme: IconThemeData(
       color: Colors.purpleAccent[895],
     ),
          )),
          //the Routes
      initialRoute: '/',
      routes: {
        '/': (context) => homeApp(),
        '/login':(context)=> loginScreen(),
        '/dataScreen':(context)=> dataScreen(),
        '/privacyPolicy':(context)=> privacyPolicy(),
        '/signIn':(context)=>signIn(),
      },
    );
  }
}


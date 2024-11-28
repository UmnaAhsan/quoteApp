import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quote_app/UI/views/home/homeView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  // }

  // void gotoNextScreen() {
  //   Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) =>  HomeView()));
  // }


 void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView(),));

     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(children: [
          Center(
            child:
            Image.network("https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvam9iNjgwLTE2Ni1wLWwxZGJ1cTN2LnBuZw.png"
             // 'assets/Quotes.json',
           ,   height: 300,
              width: 300,
              fit: BoxFit.cover,
              // onLoaded: (composition) {
              //   Future.delayed(const Duration(seconds: 3), gotoNextScreen);
              // },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Quotely',
            style: GoogleFonts.bonaNova(
                textStyle: TextStyle(
              fontSize: 35,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 27),
            child: Text(
              'Get the Quotes based on your current mood',
              style: GoogleFonts.bonaNova(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
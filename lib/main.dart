import 'package:flutter/material.dart';
import 'package:login_day1/cart/cart.dart';
import 'package:login_day1/checkout/chekcout.dart';
import 'package:login_day1/detail_food.dart';
import 'package:login_day1/histroy/history.dart';
import 'package:login_day1/homepageApi/snackApi.dart';

import 'package:login_day1/register.dart';
import 'mainPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : true,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.loraTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: name(),
    );
  }
}

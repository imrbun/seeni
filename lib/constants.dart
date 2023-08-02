import 'package:flutter/material.dart';

//api calls & logo config
const apiURL = "https://www.google.com";
const logo = "assets/images/logo.png";

//theme color configs
const kPrimaryColor = Color.fromARGB(255, 0, 90, 190);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromARGB(100, 86, 128, 246), Color.fromARGB(99, 142, 86, 246)],
);
const kSecondaryColor = Color.fromARGB(255, 255, 220, 0);
const kTextColor = Colors.black;
const kBackgroundColor = Colors.white;
const bottomSheetColor = Color.fromRGBO(38, 38, 38, 1);
const kHintColor = Colors.grey;

const kAnimationDuration = Duration(milliseconds: 200);

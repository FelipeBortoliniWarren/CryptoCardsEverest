import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color colorTextBlack = Color(0xff2F2F33);
const Color colorTextGrey = Color(0xff757680);
const Color startGradientHide = Color.fromARGB(255, 238, 238, 238);
const Color endGradientHide = Color.fromARGB(255, 224, 224, 224);
const Color backgroundIconsCripto = Colors.white;
const Color pinkWarren = Color(0xffE02B57);

TextStyle bottomNavLabelsStyle() {
  return GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.6,
  );
}

TextStyle titlePageStyle() {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: pinkWarren,
    letterSpacing: -1,
  );
}

TextStyle totalBalanceUserStyle() {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
}

TextStyle textTotalCoinValueStyle() {
  return GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: colorTextGrey,
    letterSpacing: -1,
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color colorTextBlack = Color(0xff2F2F33);
const Color colorTextGrey = Color(0xff757680);
const Color startGradientHide = Color.fromARGB(255, 238, 238, 238);
const Color endGradientHide = Color.fromARGB(255, 224, 224, 224);
const Color white = Colors.white;
const Color pinkWarren = Color(0xffE02B57);
const Color redNegativeVariation = Color(0xffCD1A1A);
const Color greenPositiveVariation = Color.fromARGB(255, 46, 166, 96);
const Color lightGrey = Color(0xffE3E4EB);

TextStyle bottomNavLabelsStyle() {
  return GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.6,
  );
}

TextStyle titleH1Montserrat32(Color? color) {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: color,
  );
}

TextStyle totalBalanceUserStyle() {
  return GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
}

TextStyle subtitleGreyStyle() {
  return GoogleFonts.lato(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: colorTextGrey,
  );
}

TextStyle titleAppBarStyle() {
  return GoogleFonts.beVietnamPro(
    fontSize: 21,
    fontWeight: FontWeight.w700,
    color: colorTextBlack,
  );
}

MaterialButton pinkButton(String text, double width) {
  return MaterialButton(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    onPressed: () {},
    color: pinkWarren,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    minWidth: width-32,
    height: 56,
    child: Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: white,
      ),
    ),
  );
}

TextStyle textInfoRowsDetailsStyle() {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: colorTextGrey,
  );
}

TextStyle valuesInfoRowsDetailsStyle() {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: colorTextBlack,
  );
}

TextStyle valueVariationStyle(double variation) {
  return GoogleFonts.lato(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: (variation == 0)
        ? colorTextGrey
        : ((variation > 0) ? greenPositiveVariation : redNegativeVariation),
  );
}

TextStyle textFilterTimeChartStyle(bool isSelected) {
  return GoogleFonts.sourceSansPro(
    color: isSelected ? colorTextBlack : colorTextGrey,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}

TextStyle titleH1BlackStyle() {
  return GoogleFonts.sourceSansPro(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: colorTextBlack,
  );
}

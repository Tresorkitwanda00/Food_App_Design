import 'package:flutter/material.dart';

class config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  // initiliser config pour la hauteur et largeur du screen
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  // declaration de la hauteur initialiseer selon le screen
  static const spaceSmall = SizedBox(
    height: 25,
  );
  static final spaceMedium = SizedBox(
    height: screenHeight! * 0.05,
  );
  static final spaceBig = SizedBox(
    height: screenHeight! * 0.08,
  );

  // declaration du textform field border

  static const OutlineBorder =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color:Colors.white)
      );

  static const FocusOrder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Colors.red));
  static const errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: Colors.red));
  static const primarycolor = Colors.black;
}

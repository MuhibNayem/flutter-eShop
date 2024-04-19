import 'package:flutter/material.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(!states.contains(MaterialState.selected)){
        return Colors.black;
      }
      return Colors.white;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(!states.contains(MaterialState.selected)){
        return Colors.transparent;
      }
      return Colors.blue;
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(!states.contains(MaterialState.selected)){
        return Colors.black;
      }
      return Colors.white;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(!states.contains(MaterialState.selected)){
        return Colors.transparent;
      }
      return Colors.blue;
    }),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_systel/presentaion/resources/styles_manager.dart';
import 'package:task_systel/presentaion/resources/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main Colors
      primaryColor: ColorManager.Primary,
      primaryColorLight: ColorManager.ligthPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.BlackColor,
      splashColor: Colors.transparent, //ripple effect Color
      backgroundColor: ColorManager.BackgroundScaffoldColor,
      //cardView theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.BlackColor,
        elevation: AppSize.s4,
      ),

      //appBar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.Primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.ligthPrimary,
          titleTextStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.white)),

      // button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.BlackColor,
      buttonColor: ColorManager.Primary,
      splashColor: ColorManager.ligthPrimary,
    ),
      //elevated button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(fontSize: FontSize.s17,color: ColorManager.white),
        primary: ColorManager.Primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        )
      ),
    ),

      //Text Theme
    textTheme: TextTheme(
      headlineLarge: getBoldStyle(color: ColorManager.BlackColor,fontSize: FontSize.s18),
      titleMedium: getMediumStyle(color: ColorManager.BlackColor,fontSize: FontSize.s16),
      bodyLarge: getRegularStyle(color: ColorManager.BlackColor),
      bodySmall: getRegularStyle(color: ColorManager.BlackColor),
    ),
      //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.white,
      contentPadding:const EdgeInsets.all(AppPadding.p12,),
      hintStyle: getRegularStyle(color: ColorManager.BlackColor,fontSize: FontSize.s18),
      labelStyle: getMediumStyle(color: ColorManager.BlackColor,fontSize: FontSize.s14),
      errorStyle:  getRegularStyle(color: ColorManager.error),
      //Enable Border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.white,width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

          //Focused Border
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.white,width: AppSize.s1_5),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
          ),
      //error Border
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),

      //focused error border
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.Primary,width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))
      ),
  ), textSelectionTheme: TextSelectionThemeData(cursorColor: ColorManager.Primary)
      );
}

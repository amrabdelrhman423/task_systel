
import 'package:flutter/cupertino.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize,FontWeight fontWeight,Color color){
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
      color: color,
    fontFamily: FontsConstants.fontFamily
  );
}

//Regular Style

TextStyle getRegularStyle({double fontSize = FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

//meduim Style

TextStyle getMediumStyle({double fontSize = FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

//light Style

TextStyle getLightStyle({double fontSize = FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

//Bold Style

TextStyle getBoldStyle({double fontSize = FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
//SemiBold Style

TextStyle getSemiBoldStyle({double fontSize = FontSize.s12,required Color color}){

  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
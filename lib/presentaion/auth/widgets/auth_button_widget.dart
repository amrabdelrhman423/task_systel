import 'package:flutter/material.dart';
import 'package:task_systel/app/constants.dart';
import 'package:task_systel/presentaion/resources/font_manager.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Center(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal:AppPadding.p18,vertical: AppPadding.p8),
            child: Container(
              width: double.infinity,
              height: 57,
              decoration: BoxDecoration(
                color: ColorManager.blueButton ,
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: const Center(
                child: Text(
                  Constants.REGISTERLOGIN,
                  style: TextStyle(
                    fontFamily: FontsConstants.fontFamily,
                    fontSize: FontSize.s20,
                    color: ColorManager.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_systel/presentaion/resources/assets_managet.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';



class ErrorLoginWidget extends StatelessWidget {
  final String message;
  const ErrorLoginWidget({Key? key,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
        height: AppSize.s40,
        width: MediaQuery.of(context).size.width*0.58,
        decoration: BoxDecoration(
          color: ColorManager.error,
          borderRadius: BorderRadius.circular(9.0),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(ImageAssets.ErrorIconLoginSVG),
             Text(
              '$message',
              style:const TextStyle(
                fontSize: AppSize.s15,
                color:ColorManager.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),);
  }
}

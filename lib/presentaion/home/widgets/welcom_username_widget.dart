import 'package:flutter/material.dart';

import '../../resources/assets_managet.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/values_manager.dart';
class WelcomeUserNameWidget extends StatelessWidget {
  const WelcomeUserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage(ImageAssets.imagesProfileImage),
          radius: AppSize.s40,
        ),
        SizedBox(
          width: AppSize.s12,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily:FontsConstants.fontFamily ,
              fontSize: AppSize.s24,
              color: ColorManager.white,
            ),
            children: [
              TextSpan(
                text: 'Good Evening,\n',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextSpan(
                text: 'Amr Abdelrhman',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/assets_managet.dart';
import '../../resources/values_manager.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(ImageAssets.imagesNotification),
        const SizedBox(
          width: AppSize.s18,
        ),
        SvgPicture.asset(ImageAssets.imagesCategoryIcon),
      ],
    );
  }
}

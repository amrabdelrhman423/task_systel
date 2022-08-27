import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';

class ButtonTestWidget extends StatelessWidget {
  const ButtonTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.s100,
      decoration: BoxDecoration(
        color: const Color(0xff5471f1),
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(),
            Text(
              'Test',
              style: TextStyle(
                fontSize: AppSize.s22,
                color: ColorManager.white,
              ),
              softWrap: false,
            ),
            Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.white,)
          ],
        ),
      ),
    );
  }
}

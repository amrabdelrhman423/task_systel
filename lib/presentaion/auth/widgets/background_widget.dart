import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../resources/assets_managet.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.BackgroundLogin),
              fit: BoxFit.cover)),
    );
  }
}

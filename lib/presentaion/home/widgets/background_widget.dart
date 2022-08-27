import 'package:flutter/material.dart';
import 'package:task_systel/presentaion/resources/assets_managet.dart';
import 'package:task_systel/presentaion/resources/color_manager.dart';
import 'dart:ui' as ui;

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*0.6,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageAssets.BackgroundHome),
          fit: BoxFit.fill
        )
      ),
    );
  }
}

// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint();
//     Path path = Path();
//
//     paint.color = Color(0xfffbb03b);
//     path = Path();
//     path.lineTo(size.width * 0.08, size.height * 2.86);
//     path.quadraticBezierTo(size.width * 0.08, size.height * 2.86, size.width * 0.08, size.height * 2.91,);
//     path.quadraticBezierTo(size.width * 0.14, size.height * 2.98, size.width * 0.19, size.height * 3.01,);
//     path.quadraticBezierTo(size.width * 0.43, size.height * 3.01, size.width * 0.52, size.height * 2.85, );
//     path.quadraticBezierTo(size.width * 0.8, size.height * 3.01, size.width * 0.71, size.height * 3.48,);
//     path.quadraticBezierTo(size.width * 1.08, size.height * 3.41, size.width * 1.08, size.height * 2.42, );
//     path.quadraticBezierTo(size.width * 1.08, size.height * 2.42, size.width * 0.08, size.height * 2.42, );
//     path.quadraticBezierTo(size.width * 0.08, size.height * 2.42, size.width * 0.08, size.height * 2.86);
//     canvas.drawPath(path, paint);
//   }
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
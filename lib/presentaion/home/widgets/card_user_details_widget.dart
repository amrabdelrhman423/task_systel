import 'dart:math';

import 'package:flutter/material.dart';

import '../../resources/assets_managet.dart';
import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';

class CardUserDetailsWidget extends StatelessWidget {
  final String username,amount,date;

   const CardUserDetailsWidget({Key? key,required this.username,required this.amount,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rng = Random();

    return  Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            offset: Offset(0, 10),
            blurRadius: 25,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: ColorManager.ColorUser[rng.nextInt(3)],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(13.0),
                topRight: Radius.circular(13.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontFamily: 'SF Compact Display',
                    fontSize: 16,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                const SizedBox(
                  height: AppSize.s4,
                ),
                const Text(
                  'Total Spending',
                  style: TextStyle(
                    fontFamily: 'SF Compact Display',
                    fontSize: 12,
                    color: Color(0xffffffff),
                  ),
                  softWrap: false,
                ),
                const SizedBox(
                  height: AppSize.s4,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child:SizedBox(
              width: MediaQuery.of(context).size.width * 0.35 ,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'EGP',
                            style: TextStyle(
                              fontSize: 12,
                              color: ColorManager.BlackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: false,
                          ),
                        ),
                        const SizedBox(width: AppSize.s4,),
                        Text(
                          amount,
                          style: const TextStyle(
                            fontSize: 30,
                            color: ColorManager.BlackColor,
                            letterSpacing: -1.05,
                            fontWeight: FontWeight.w600,
                          ),
                          softWrap: false,
                        ),

                      ],
                    ),
                     Text(
                      '  Last spend $date',
                      style: const TextStyle(
                        fontSize: AppSize.s11,
                        color: Color(0xff747474),
                      ),
                    ),
                    const SizedBox(height: AppSize.s15,)
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: -25,
            right: 30,
            left: 30,
            child: Center(
              child: CircleAvatar(
                backgroundImage:
                AssetImage(ImageAssets.imagesProfileImage),
                radius: AppSize.s30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

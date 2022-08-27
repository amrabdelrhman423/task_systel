import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_systel/presentaion/resources/assets_managet.dart';

import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';

class CardWalletDetailsWidget extends StatelessWidget {
  final String title,imagePath,amount,date;
  final Color colorHeader;
   CardWalletDetailsWidget({Key? key, required this.title, required this.imagePath,required this.amount,required this.date,required this.colorHeader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.43,
      height: MediaQuery.of(context).size.height*0.21,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s15),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            offset: Offset(0, 10),
            blurRadius: AppSize.s24,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height*0.05 ,
            decoration:  BoxDecoration(
              color:colorHeader,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13.0),
                topRight: Radius.circular(13.0),
              ),
            ),
            child:  Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: ColorManager.white,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s15,),
          SvgPicture.asset(imagePath,fit: BoxFit.fitHeight,height: 45),
          const SizedBox(height: AppSize.s8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const RotatedBox(
                quarterTurns: -1,
                child: Text(
                  'EGP',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff9a9a9a),
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: false,
                ),
              ),
              SizedBox(width: AppSize.s8,),
              Text(
                '$amount',
                style: const TextStyle(
                  fontFamily: 'SF Compact Display',
                  fontSize: 42,
                  color: Color(0xff000000),
                  letterSpacing: -1.05,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: false,
              ),

            ],
          ),
           Text(
            '    ${date}',
            style: const TextStyle(
              fontSize: AppSize.s11,
              color: Color(0xff747474),
            ),
          ),
        ],
      ),
    );
  }
}

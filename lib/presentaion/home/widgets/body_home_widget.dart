import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_systel/app/constants.dart';
import 'package:task_systel/data/data_source/local_database.dart';
import 'package:task_systel/presentaion/home/bloc/bloc.dart';
import 'package:task_systel/presentaion/home/widgets/welcom_username_widget.dart';
import 'package:task_systel/presentaion/resources/assets_managet.dart';
import 'package:task_systel/presentaion/resources/color_manager.dart';

import '../../resources/values_manager.dart';
import 'appbar_home_widget.dart';
import 'button_test_widget.dart';
import 'card_user_details_widget.dart';
import 'card_wallet_details_widget.dart';
import 'cards_wallet_payment_widget.dart';

class BodyHomeWidget extends StatelessWidget {
  const BodyHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HomeBloc>(context);
    var random = Random();
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          right: AppPadding.p18,left: AppPadding.p18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s11,
            ),
            const AppBarHomeWidget(),
            const SizedBox(
              height: AppSize.s40,
            ),
            const WelcomeUserNameWidget(),
            const SizedBox(
              height: AppSize.s75,
            ),
            const CardsWalletPaymentWidget(),
            const SizedBox(
              height: AppSize.s30,
            ),
            const ButtonTestWidget(),
            const SizedBox(
              height: AppSize.s30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Text(
                  Constants.Users,
                  style:TextStyle(
                    fontSize: AppSize.s21,
                    color: ColorManager.BlackColor,
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                ),
                InkWell(
                  onTap: () {
                    bloc.adduser(
                        username: Constants.UserNames[
                            random.nextInt(Constants.UserNames.length)],
                        amount: Constants.UserAmount[
                            random.nextInt(Constants.UserAmount.length)],
                        date: Constants.Userdate[
                            random.nextInt(Constants.Userdate.length)]);
                  },
                  child: Container(
                    width: AppSize.s30,
                    height: AppSize.s30,
                    decoration: const BoxDecoration(
                      color: ColorManager.white,
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xff707070),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 160,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: LocalDataSource.usersName.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CardUserDetailsWidget(
                    username: LocalDataSource.usersName[index]["username"],
                    date: LocalDataSource.usersName[index]["date"],
                    amount: LocalDataSource.usersName[index]["amount"],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

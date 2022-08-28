import 'package:flutter/material.dart';

import '../../resources/assets_managet.dart';
import '../../resources/color_manager.dart';
import 'card_wallet_details_widget.dart';

class CardsWalletPaymentWidget extends StatelessWidget {
  const CardsWalletPaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardWalletDetailsWidget(
          date: "Last update 24/6",
          amount: "920.0",
          title: "Your Wallet",
          imagePath: ImageAssets.imagesWallet,
          colorHeader: ColorManager.walletColor,
        ),
        CardWalletDetailsWidget(
          colorHeader: ColorManager.last_activity,
          imagePath: ImageAssets.imagesPayment,
          title: "LAST ACTIVITY",
          date: "Transaction on 10/5",
          amount: "245.0",
        )
      ],
    );
  }
}

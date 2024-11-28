import 'package:eternalwallet/screens/buy_ethereum_select_currency_screen/widgets/listprice_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';

class DarkBuyEthereumSelectCurrencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            appBar: CustomAppBar(
                height: getVerticalSize(69),
                leadingWidth: 52,
                leading: GotoBack(context),
                title:
                    AppbarTitle(text: "Currency", margin: getMargin(left: 16))),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 21, right: 24, bottom: 21),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Popular",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold16
                                .copyWith(letterSpacing: getHorizontalSize(0.2))),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Column(
                            children: [
                                ListpriceItemWidget(select: false,name: "USD" , fullform: "US Dollar",),
                                ListpriceItemWidget(select: false,name: "USD" , fullform: "US Dollar",),
                                ListpriceItemWidget(select: false,name: "USD" , fullform: "US Dollar",),
                                ListpriceItemWidget(select: false,name: "USD" , fullform: "US Dollar",),
                                ListpriceItemWidget(select: false,name: "USD" , fullform: "US Dollar",),
                            ],

                            )),
                        Padding(
                            padding: getPadding(top: 39),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(top: 42),
                            child: Text("All Currency",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(top: 39, right: 153),
                            child:Column(
                              children:[
                                ListpriceItemWidget(select: false,name: "BGN" , fullform: "Bulgarian Lev",),
                                ListpriceItemWidget(select: false,name: "BRL" , fullform: "Brazilian Real",),
                                ListpriceItemWidget(select: false,name: "CAD" , fullform: "Canadian Dollar",),
                                ListpriceItemWidget(select: false,name: "CHF" , fullform: "Swiss Franc",),
                                ListpriceItemWidget(select: false,name: "COP" , fullform: "Colombian Peso",),
                            ]
                            ) 
                            )
                      ])),
            )));
  }

  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}

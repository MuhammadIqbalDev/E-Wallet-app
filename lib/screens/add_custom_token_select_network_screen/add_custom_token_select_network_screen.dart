import 'package:eternalwallet/screens/add_custom_token_select_network_screen/widgets/listchainethere1_item_widget.dart';
import 'package:eternalwallet/screens/wallet_tokens_full_page/wallet_tokens_full_page.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';

class DarkAddCustomTokenSelectNetworkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Select Network", margin: getMargin(left: 16)),
                actions: [
                 Padding(padding: EdgeInsets.all(10),
                 child: CustomIcon(icon: Icons.search,size: 25,),)
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Padding(
                      //     padding: getPadding(top: 10),
                      //     child: Divider(
                      //         height: getVerticalSize(1),
                      //         thickness: getVerticalSize(1),
                      //         color: ColorConstant.gray800)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 15, right: 0),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                        padding:
                                            getPadding(top: 16.0, bottom: 16.0),
                                        child: SizedBox(
                                            // width: getHorizontalSize(380),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)));
                                  },
                                  itemCount: allcoins.length,
                                  itemBuilder: (context, index) {
                                    return Listchainethere1ItemWidgetNetWork(name: allcoins[index]['name'],image: allcoins[index]['image'],);
                                  })))
                    ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}

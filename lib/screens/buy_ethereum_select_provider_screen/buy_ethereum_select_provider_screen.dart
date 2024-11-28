import 'package:eternalwallet/screens/buy_ethereum_select_provider_screen/widgets/listclose_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';

import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

class DarkBuyEthereumSelectProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Providers", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Padding(
                                padding: getPadding(top: 24.0, bottom: 24.0),
                                child: SizedBox(
                                    width: getHorizontalSize(380),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color:isDark ? ColorConstant.gray800 :  ColorConstant.gray300)));
                          },
                          itemCount: allproviders.length,
                          itemBuilder: (context, index) {
                            return ListcloseItemWidget(
                              name: allproviders[index]['name'],
                              image: allproviders[index]['image'],
                            );
                          }),
                      
                      
                    ]))
                    ,
                    bottomNavigationBar: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomButton(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DarkBuyEthereumAddCreditOrDebitCardScreen();
                              }));
                            },
                            height: getVerticalSize(58),
                            text: "Add Credit or Debit Card",
                            margin: getMargin(top: 23, bottom: 5),
                            variant: ButtonVariant.FillOrange400,
                            padding: ButtonPadding.PaddingAll19),
                    ),
                    ));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

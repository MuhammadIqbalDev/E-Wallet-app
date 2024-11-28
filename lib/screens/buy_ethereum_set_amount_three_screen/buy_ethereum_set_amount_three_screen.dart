import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../buy_ethereum_select_currency_screen/buy_ethereum_select_currency_screen.dart';
import '../buy_ethereum_successful_dialog/buy_ethereum_successful_dialog.dart';

class DarkBuyEthereumSetAmountThreeScreen extends StatefulWidget {
  @override
  State<DarkBuyEthereumSetAmountThreeScreen> createState() =>
      _DarkBuyEthereumSetAmountThreeScreenState();
}

class _DarkBuyEthereumSetAmountThreeScreenState
    extends State<DarkBuyEthereumSetAmountThreeScreen> {
  TextEditingController _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(69),
          leadingWidth: 52,
          leading:GotoBack(context),
          title: AppbarTitle(text: "Buy ETH", margin: getMargin(left: 16))),
       body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 18, right: 24, bottom: 18),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomButton(
                height: getVerticalSize(45),
                width: getHorizontalSize(113),
                text: "USD",
                variant: ButtonVariant.OutlineOrangeA2003f,
                // variant: ButtonVariant.OutlineOrange400,
                shape: ButtonShape.RoundedBorder22,
                padding: ButtonPadding.PaddingT11,
                fontStyle: ButtonFontStyle.UrbanistRomanBold18,
                suffixWidget: Container(
                    margin: getMargin(left: 8),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: ColorConstant.whiteA700,
                    ))),
            Padding(
              padding: getPadding(top: 52),
              child: TextField(
                controller: _amountController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                showCursor: false,
                onChanged: (value) {
                  
                  setState(() {
                    // _amountController.text = '$value';
                  });
                },
                style: AppStyle.txtUrbanistRomanBold56,
                decoration: InputDecoration(
                  // prefix: Text('\$'),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    fillColor: Colors.transparent,
                    hintText: '\$0',
                    hintStyle: AppStyle.txtUrbanistRomanBold56),
              ),
            ),
            Padding(
                padding: getPadding(top: 17),
                child: Text("~ ${_amountController.text} ETH",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium18
                        .copyWith(letterSpacing: getHorizontalSize(0.2)))),
            Padding(
                padding: getPadding(top: 57),
                child: Divider(
                    height: getVerticalSize(1),
                    thickness: getVerticalSize(1),
                    color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DarkBuyEthereumSelectCurrencyScreen();
                }));
              },
              child: Container(
                  margin: getMargin(top: 23),
                  padding: getPadding(all: 16),
                  decoration: AppDecoration.outlineGray8001
                      .copyWith(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(48),
                            width: getSize(48)),
                        Padding(
                            padding: getPadding(left: 16, top: 13, bottom: 12),
                            child: Text("Binance Connect",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold18.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(top: 12, bottom: 12))
                      ])),
            ),
          ])),
    
    
     
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: CustomButton(
          
          onTap: (){
            showDialog(
                  
                    context: context,
                    builder: (context) {
                      return DarkBuyEthereumSuccessfulDialog();
                    });
          },
            height: getVerticalSize(58),
            text: "Continue",
            margin: getMargin(top: 40, bottom: 5),
            fontStyle: ButtonFontStyle.UrbanistRomanBold18,
            variant: ButtonVariant.FillOrange400),
      ),
    ));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}

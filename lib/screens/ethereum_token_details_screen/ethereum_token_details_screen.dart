
import 'package:eternalwallet/screens/ethereum_token_details_screen/widgets/listautolayouth_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../buy_crypto_options_screen/buy_crypto_options_screen.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../ethereum_graph_screen/ethereum_graph_screen.dart';
import '../receive_crypto_options_screen/receive_crypto_options_screen.dart';
import '../send_crypto_options_screen/send_crypto_options_screen.dart';
import '../swap_crypto_confirm_screen/swap_crypto_confirm_screen.dart';

class DarkEthereumTokenDetailsScreen extends StatelessWidget {
  final String? title;
  final Widget? image;
  const DarkEthereumTokenDetailsScreen({
    
    this.title,
    this.image,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: title ?? "Ethereum (ETH)",
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DarkEthereumGraphScreen();
                        }));
                      },
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: isDark
                          ? ImageConstant.imgIconlylightoutlinechart
                          : null,
                      imagePath: !isDark ? ImageConstant.analyzer : null,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 14))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, right: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 21),
                            child: Row(children: [
                              Text("Coin",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold16
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))),
                              Spacer(),
                              Text("1,297.67",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold16WhiteA700
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("+0.75%",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold16Orange400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ])),
                        Padding(
                            padding: getPadding(top: 24),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  image ??
                                      CustomImageView(
                                          svgPath: isDark
                                              ? ImageConstant
                                                  .imgChainethereumeth
                                              : null,
                                          imagePath: !isDark
                                              ? ImageConstant.darkEth
                                              : null,
                                          height: getVerticalSize(79),
                                          width: getHorizontalSize(49)),
                                  Padding(
                                      padding: getPadding(top: 21),
                                      child: Text("59.47 ETH",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold48)),
                                  Padding(
                                      padding: getPadding(top: 22),
                                      child: Text("79,379.2",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtUrbanistSemiBold18
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.2)))),
                                  Padding(
                                      padding: getPadding(top: 21),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: isDark
                                              ? ColorConstant.gray800
                                              : ColorConstant.gray300)),
                                  Padding(
                                      padding: getPadding(
                                          left: 22, top: 19, right: 22),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkSendCryptoOptionsScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      right: 0, bottom: 0),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 60,
                                                            width: 60,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillOrange50014,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAutolayouthorizontal)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text("Send",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkReceiveCryptoOptionsScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 0,
                                                      right: 0,
                                                      bottom: 0),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 60,
                                                            width: 60,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillOrange50014,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAutolayouthorizontal60x60)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text(
                                                                "Receive",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkBuyCryptoOptionsScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 0, right: 0),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 60,
                                                            width: 60,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillOrange50014,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAutolayouthorizontal1)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15),
                                                            child: Text("Buy",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                            )),
                                            Expanded(
                                                child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkSwapCryptoConfirmScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              child: Padding(
                                                  padding: getPadding(left: 0),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 60,
                                                            width: 60,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillOrange50014,
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAutolayouthorizontal2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15),
                                                            child: Text("Swap",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                            ))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: isDark
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(top: 26),
                            child: Text("Today",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Column(
                              children: [
                                ListautolayouthItemWidget(
                                  image: ImageConstant.imgAutolayouthorizontal,
                                  title: "Transfer",
                                  to: "To : ",
                                  itemno: "0x731120323984detw3232",
                                  amount: "1.35 ETH",
                                ),
                                ListautolayouthItemWidget(
                                  image: ImageConstant.imgAutolayouthorizontal1,
                                  title: "Buy",
                                  to: "To : ",
                                  itemno: "0x731120323984detw3232",
                                  amount: "1.35 ETH",
                                ),
                                ListautolayouthItemWidget(
                                  image: ImageConstant.imgAutolayouthorizontal2,
                                  title: "Swap",
                                  to: "Address : ",
                                  itemno: "0x7311203239",
                                  amount: "1.35 ETH",
                                ),
                                ListautolayouthItemWidget(
                                  image: ImageConstant.imgAutolayouthorizontal,
                                  title: "Transfer",
                                  to: "To : ",
                                  itemno: "0x731120323984detw3232",
                                  amount: "1.35 ETH",
                                ),
                              ],
                            ))
                      ])),
            )));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

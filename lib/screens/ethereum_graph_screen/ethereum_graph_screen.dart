import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';

// ignore_for_file: must_be_immutable
class DarkEthereumGraphScreen extends StatefulWidget {
  @override
  State<DarkEthereumGraphScreen> createState() => _DarkEthereumGraphScreenState();
}

class _DarkEthereumGraphScreenState extends State<DarkEthereumGraphScreen> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(69),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Ethereum Graph", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: isDark ? ImageConstant.imgSend : null,
                      imagePath:  !isDark ? ImageConstant.imgAutolayouthorizontal : null,
                      margin:
                          getMargin(left: 24, top: 12, right: 24, bottom: 15))
                ]),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      padding: getPadding(top: 18),
                      child: Padding(
                          padding: getPadding(left: 24, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("1,297.67",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRomanBold48Orange400),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("12.56",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium18
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2))),
                                          Padding(
                                              padding: getPadding(left: 12),
                                              child: Text("+0.75%",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanMedium18Orange400
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 11),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("1.5k",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 27),
                                                        child: Text("1k",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 27),
                                                        child: Text("750",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 27),
                                                        child: Text("500",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 26),
                                                        child: Text("250",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 27),
                                                        child: Text("100",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ])),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorOrangeA200,
                                              height: getVerticalSize(236),
                                              width: getHorizontalSize(343))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 62, top: 9, right: 25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text("1H",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold14
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                              Padding(
                                                  padding: getPadding(left: 40),
                                                  child: Text("1D",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              Padding(
                                                  padding: getPadding(left: 38),
                                                  child: Text("1W",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              Padding(
                                                  padding: getPadding(left: 37),
                                                  child: Text("1M",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              Padding(
                                                  padding: getPadding(left: 39),
                                                  child: Text("1Y",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              Padding(
                                                  padding: getPadding(left: 39),
                                                  child: Text("All",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2))))
                                            ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 25),
                                        padding: getPadding(
                                            left: 20,
                                            top: 18,
                                            right: 20,
                                            bottom: 18),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: ColorConstant.gray30090),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "Price Alerts",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold18Gray300)),
                                                        CustomSwitch(
                                                            value:
                                                                isSelectedSwitch,
                                                            onChanged: (value) {
                                                          setState(() {
                                                                isSelectedSwitch =
                                                                  value;
                                                          });
                                                            })
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text("Website",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanBold18Gray300)),
                                                        Spacer(),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: Text(
                                                                "ethereum.org",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold16WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2)))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            margin: getMargin(
                                                                left: 12,
                                                                top: 1,
                                                                bottom: 2))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Explorer",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        Spacer(),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 2),
                                                            child: Text(
                                                                "etherscan.io",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold16WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2)))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            margin: getMargin(
                                                                left: 12,
                                                                bottom: 2))
                                                      ]))
                                            ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 24),
                                        padding: getPadding(all: 20),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: ColorConstant.gray30090),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Market Cap",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 2),
                                                            child: Text(
                                                                "164,387,883,628",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold16WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Volume (24h)",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "13,634,523,467",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold16WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Circulating Supply",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "122,587,625.50 ETH",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold16WhiteA700
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("Total Supply",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        Text("122,587,625.50 ETH",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold16WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Divider(
                                                      height: getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                              Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "View on CoinMarketCap",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18Gray300),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 1))
                                                      ]))
                                            ])))
                              ])))),
            )));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

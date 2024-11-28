// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';

class DarkEthereumTransferHistoryScreen extends StatelessWidget {
  final String title;
  final String image;

  const DarkEthereumTransferHistoryScreen({
    Key? key,
    required this.title,
    required this.image,
  }) : super();
  // fin
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(text: title, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: isDark ? ImageConstant.imgSend : null,
                      imagePath: !isDark
                          ? image
                          : null,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("1.597 ETH",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold48Orange400),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("2,107.11 USD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      // Padding(
                      //     padding: getPadding(top: 25),
                      //     child: Divider(
                      //         height: getVerticalSize(1),
                      //         thickness: getVerticalSize(1),
                      //         color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 23),
                              padding: getPadding(all: 20),
                              decoration: AppDecoration.allgreyBorder,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Date",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistSemiBold16
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2))),
                                          Text("Dec 24, 09:41 AM",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistSemiBold16WhiteA700
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2)))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 1),
                                                  child: Text("Status",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconlycurvedinfo,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      left: 6,
                                                      top: 4,
                                                      bottom: 4)),
                                              Spacer(),
                                              CustomButton(
                                                  height: getVerticalSize(20),
                                                  width: getHorizontalSize(100),
                                                  text: "Completed",
                                                  variant: ButtonVariant.FillAmber50014,
                                                  shape: ButtonShape
                                                      .RoundedBorder6,
                                                  fontStyle: ButtonFontStyle.UrbanistRomanBold16b
                                                  )
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Receiver",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                              Text("0x16dcc0e...bf7c61037",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold16WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Network Fee",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconlycurvedinfo,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      left: 6,
                                                      top: 1,
                                                      bottom: 2)),
                                              Spacer(),
                                              Text("0.02 ETH (26.35)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold16WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 23, bottom: 5),
                          child: Text("View More Details",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18Orange400))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}

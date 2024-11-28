import '../ethereum_token_details_screen/widgets/listautolayouth_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

class DarkStakingSolanaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                title: AppbarTitle(
                    text: "Solana (SOL)", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgIconlylightoutlinechart,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: SingleChildScrollView(
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
                                  style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                      letterSpacing: getHorizontalSize(0.2))),
                              Spacer(),
                              Text("32.75",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold16WhiteA700
                                      .copyWith(
                                          letterSpacing: getHorizontalSize(0.2))),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("+7.12%",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold16Orange400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ])),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUnion,
                                      height: getVerticalSize(53),
                                      width: getHorizontalSize(68)),
                                  Padding(
                                      padding: getPadding(top: 33),
                                      child: Text("257.93 SOL",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold48)),
                                  Padding(
                                      padding: getPadding(top: 22),
                                      child: Text("8,573.58",
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
                                          color: ColorConstant.gray800)),
                                  Padding(
                                      padding: getPadding(
                                          left: 22, top: 19, right: 22),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(
                                                        right: 16, bottom: 2),
                                                    child: 
                                                    
                                                    Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 60,
                                                              width: 60,
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
                                                                      .txtUrbanistRomanBold16Gray50
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.2))))
                                                        ]))),
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        right: 16,
                                                        bottom: 1),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 60,
                                                              width: 60,
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
                                                                      .txtUrbanistRomanBold16Gray50
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.2))))
                                                        ]))),
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16, right: 16),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 60,
                                                              width: 60,
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
                                                                      .txtUrbanistRomanBold16Gray50
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.2))))
                                                        ]))),
                                            Expanded(
                                                child: Padding(
                                                    padding: getPadding(left: 16),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 60,
                                                              width: 60,
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
                                                                      .txtUrbanistRomanBold16Gray50
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.2))))
                                                        ])))
                                          ]))
                                ])),
                      Padding(
                              padding: getPadding(top: 22),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray800)),
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
                        ]),
                ))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}

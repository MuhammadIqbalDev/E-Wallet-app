import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

class DarkSwapCryptoTypeAmountFilledFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(69),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(text: "Swap", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 18, right: 24, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 20, top: 21, right: 20, bottom: 21),
                              decoration: AppDecoration.outlineGray8002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("You Pay",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: TextFormField()),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: Text(
                                                            "Balance: 59.47 ETH",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ]),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgChainethereumeth,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      top: 27, bottom: 28)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 27,
                                                      bottom: 28),
                                                  child: Text("ETH",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 27,
                                                      bottom: 28))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 22, bottom: 21),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .gray800)),
                                              CustomIconButton(
                                                  height: 44,
                                                  width: 44,
                                                  margin: getMargin(left: 12),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAutolayouthorizontal)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgThemedarkdivider,
                                                  height: getVerticalSize(1),
                                                  width: getHorizontalSize(28),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 22,
                                                      bottom: 22))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("You Get",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanMedium14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Text("1,138.64",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold24)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Text(
                                                            "Balance: 1938.47 USDT",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ]),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgChaintetherusdt,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      top: 28, bottom: 28)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 28,
                                                      bottom: 28),
                                                  child: Text("USDT",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 28,
                                                      bottom: 28))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: getHorizontalSize(86),
                                    padding: getPadding(
                                        left: 29, top: 7, right: 29, bottom: 7),
                                    decoration: AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("25%",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                Container(
                                    width: getHorizontalSize(86),
                                    padding: getPadding(
                                        left: 29, top: 7, right: 29, bottom: 7),
                                    decoration: AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("50%",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                Container(
                                    width: getHorizontalSize(86),
                                    padding: getPadding(
                                        left: 30, top: 7, right: 30, bottom: 7),
                                    decoration: AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("75%",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                Container(
                                    width: getHorizontalSize(86),
                                    padding: getPadding(
                                        left: 27, top: 7, right: 27, bottom: 7),
                                    decoration: AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: Text("100%",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("1 ETH = 1,334.2 USDT",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      CustomButton(
                          text: "Swap", margin: getMargin(top: 18, bottom: 5))
                    ]))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}

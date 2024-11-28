import 'dart:ui';

import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../secure_wallet_walkthrough_five_screen/secure_wallet_walkthrough_five_screen.dart';

class DarkSecureWalletWalkthroughThreeScreen extends StatefulWidget {
  @override
  State<DarkSecureWalletWalkthroughThreeScreen> createState() =>
      _DarkSecureWalletWalkthroughThreeScreenState();
}

class _DarkSecureWalletWalkthroughThreeScreenState
    extends State<DarkSecureWalletWalkthroughThreeScreen> {
  bool viewButtons = false;

  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  bool select6 = false;
  bool select7 = false;
  bool select8 = false;
  bool select9 = false;
  bool select10 = false;
  bool select11 = false;
  bool select12 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(200),
                    imagePath: ImageConstant.imgGroupGray80016x200)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: isDark
                              ? ColorConstant.gray800
                              : ColorConstant.gray300),
                      Container(
                          width: getHorizontalSize(322),
                          margin: getMargin(left: 28, top: 21, right: 28),
                          child: Text("Write Down Your Seed Phrase",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtUrbanistRomanBold18Orange400b)),
                      Container(
                          width: getHorizontalSize(376),
                          margin: getMargin(top: 16),
                          child: Text(
                              "This is your seed phrase. Write it down on a paper and keep it in a safe place. You'll be asked to re-enter this phrase (in order) on the next step.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: isDark
                                  ? ColorConstant.gray800
                                  : ColorConstant.gray300)),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 23, bottom: 5),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: getHorizontalSize(3),
                                  color: isDark
                                      ? ColorConstant.gray800
                                      : ColorConstant.orange400),
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Container(
                              height: getVerticalSize(400),
                              width: getHorizontalSize(380),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder40),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomButton(
                                                    onTap: () {
                                                      setState(() {
                                                        select1 = !select1;
                                                      });
                                                    },
                                                    variant:select1 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select1 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "1. material"),
                                                CustomButton(
                                                  onTap: () {
                                                      setState(() {
                                                        select2 = !select2;
                                                      });
                                                    },
                                                    variant:select2 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select2 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "2. wrist",
                                                    margin: getMargin(top: 3)),
                                                CustomButton(
                                                  onTap: () {
                                                      setState(() {
                                                        select3 = !select3;
                                                      });
                                                    },
                                                    variant:select3 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select3 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "3. Option",
                                                    margin: getMargin(top: 3)),
                                                CustomButton(
                                                  onTap: () {
                                                      setState(() {
                                                        select4 = !select4;
                                                      });
                                                    },
                                                    variant:select4 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select4 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "4. Skate",
                                                    margin: getMargin(top: 3)),
                                                CustomButton(
                                                  onTap: () {
                                                      setState(() {
                                                        select5 = !select5;
                                                      });
                                                    },
                                                    variant:select5 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select5 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "5. harbour",
                                                    margin: getMargin(top: 3)),
                                                CustomButton(
                                                  onTap: () {
                                                      setState(() {
                                                        select6 = !select6;
                                                      });
                                                    },
                                                    variant:select6 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select6 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                    height: getVerticalSize(45),
                                                    width:
                                                        getHorizontalSize(158),
                                                    text: "6. pear",
                                                    margin: getMargin(top: 3)),
                                              ]),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select7 = !select7;
                                                      });
                                                    },
                                                       variant:select7 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select7 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "7. space"),
                                                    CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select8 = !select8;
                                                      });
                                                    },
                                                        variant:select8 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select8 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "8. bench",
                                                        margin:
                                                            getMargin(top: 3)),
                                                    CustomButton(onTap: () {
                                                      setState(() {
                                                        select9 = !select9;
                                                      });
                                                    },
                                                        variant:select9 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select9 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "9. payment",
                                                        margin:
                                                            getMargin(top: 3)),
                                                    CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select10 = !select10;
                                                      });
                                                    },
                                                        variant:select10 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select10 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "10. bomb",
                                                        margin:
                                                            getMargin(top: 3)),
                                                    CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select11 = !select11;
                                                      });
                                                    },
                                                        variant:select11 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select11 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "11. hint",
                                                        margin:
                                                            getMargin(top: 3)),
                                                    CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select12 = !select12;
                                                      });
                                                    },
                                                        variant:select12 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select12 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text: "12. maze",
                                                        margin:
                                                            getMargin(top: 3)),
                                                  ]))
                                        ])),
                                viewButtons == false
                                    ? Align(
                                        alignment: Alignment.center,
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 10.0, sigmaY: 10.0),
                                          child: Container(
                                              padding: getPadding(
                                                  left: 47,
                                                  top: 129,
                                                  right: 47,
                                                  bottom: 129),
                                              decoration: AppDecoration
                                                  .outlineWhiteA7000f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder40),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "Tap to reveal your seed phrase",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold20)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 13),
                                                        child: Text(
                                                            "Make sure no one is watching your screen.",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium14WhiteA700
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2)))),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () {
                                                        setState(() {
                                                          viewButtons = true;
                                                        });
                                                      },
                                                      child: CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  119),
                                                          text: "View",
                                                          margin:
                                                              getMargin(top: 0),
                                                          variant: ButtonVariant
                                                              .FillOrange400,
                                                          padding: ButtonPadding
                                                              .PaddingT11,
                                                          prefixWidget:
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              8),
                                                                  child: Icon(
                                                                    Icons
                                                                        .remove_red_eye,
                                                                    color: Colors
                                                                        .white,
                                                                  ))),
                                                    )
                                                  ])),
                                        ))
                                    : SizedBox()
                              ])))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DarkSecureWalletWalkthroughFiveScreen()),
                          );
                        },
                        child: CustomButton(
                            height: getVerticalSize(58),
                            text: "Next",
                            variant: ButtonVariant.OutlineOrangeA2003f,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
                      )
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}

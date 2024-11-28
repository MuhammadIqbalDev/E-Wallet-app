import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../secure_wallet_walkthrough_six_screen/secure_wallet_walkthrough_six_screen.dart';

class DarkSecureWalletWalkthroughFiveScreen extends StatefulWidget {
  @override
  State<DarkSecureWalletWalkthroughFiveScreen> createState() =>
      _DarkSecureWalletWalkthroughFiveScreenState();
}

class _DarkSecureWalletWalkthroughFiveScreenState
    extends State<DarkSecureWalletWalkthroughFiveScreen> {
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  bool select6 = false;

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
                    imagePath: ImageConstant.imgGroup16x200)),
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
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Confirm Seed Phrase",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRomanBold18Orange400b)),
                      Container(
                          width: getHorizontalSize(296),
                          margin: getMargin(left: 41, top: 17, right: 41),
                          child: Text(
                              "Select each word in the order it was presented to you.",
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
                      Padding(
                          padding: getPadding(top: 84),
                          child: Text("6.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold48Orange400)),
                      Padding(
                          padding: getPadding(top: 84),
                          child: OutlineGradientButton(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(3),
                                  top: getVerticalSize(3),
                                  right: getHorizontalSize(3),
                                  bottom: getVerticalSize(3)),
                              strokeWidth: getHorizontalSize(3),
                              gradient: LinearGradient(
                                  begin: Alignment(1, 1),
                                  end: Alignment(0, 0),
                                  colors: [
                                    ColorConstant.orangeA200,
                                    ColorConstant.orange40001
                                  ]),
                              corners: Corners(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40)),
                              child: Container(
                                  padding: getPadding(all: 24),
                                  decoration: AppDecoration.outline.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder40),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select1 = !select1;
                                                         if (select1) {
                                                    select2 = false;
                                                    select3 = false;
                                                    select4 = false;
                                                    select5 = false;
                                                    select6 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select1 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select1 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "wrist",
                                                        margin:
                                                            getMargin(top: 0,left: 2)),
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select2 = !select2;
                                                         if (select2) {
                                                    select1 = false;
                                                    select3 = false;
                                                    select4 = false;
                                                    select5 = false;
                                                    select6 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select2 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select2 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "option",
                                                        margin:
                                                            getMargin(top: 3,left: 2)),
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select3 = !select3;
                                                         if (select3) {
                                                    select1 = false;
                                                    select1 = false;
                                                    select4 = false;
                                                    select5 = false;
                                                    select6 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select3 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select3 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "pear",
                                                        margin:
                                                            getMargin(top: 3,left: 2)),
                                        ],
                                      ),
                                      
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select4 = !select4;
                                                         if (select4) {
                                                    select2 = false;
                                                    select3 = false;
                                                    select1 = false;
                                                    select5 = false;
                                                    select6 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select4 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select4 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "bench",
                                                        margin:
                                                            getMargin(top: 0,left: 2)),
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select5 = !select5;
                                                         if (select5) {
                                                    select2 = false;
                                                    select3 = false;
                                                    select4 = false;
                                                    select1 = false;
                                                    select6 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select5 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select5 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "hint",
                                                        margin:
                                                            getMargin(top: 3,left: 2)),
                                          CustomButton(
                                                      onTap: () {
                                                      setState(() {
                                                        select6 = !select6;
                                                         if (select6) {
                                                    select2 = false;
                                                    select3 = false;
                                                    select4 = false;
                                                    select5 = false;
                                                    select1 = false;
                                                  }
                                                      });
                                                    },
                                                        variant:select6 ? ButtonVariant.OutlineOrangeA2003f :  ButtonVariant
                                                        .fillgrayAndwhite,
                                                    fontStyle: select6 ? ButtonFontStyle.UrbanistRomanBold18b : ButtonFontStyle
                                                        .UrbanistRomanBold16,
                                                        height:
                                                            getVerticalSize(40),
                                                        width:
                                                            getHorizontalSize(
                                                                100),
                                                        text: "maze",
                                                        margin:
                                                            getMargin(top: 3,left: 2)),
                                        ],
                                      )
                                      
                                    
                                    ],
                                  )))),
                      CustomImageView(
                          imagePath:
                              ImageConstant.imgAutolayouthorizontalGray800,
                          height: getVerticalSize(120),
                          width: getHorizontalSize(380),
                          margin: getMargin(top: 24))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
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
                                    DarkSecureWalletWalkthroughSixScreen()),
                          );
                        },
                        child: CustomButton(
                            height: getVerticalSize(58),
                            text: "Next",
                            variant: ButtonVariant.FillOrange400,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
                      )
                    ]))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}

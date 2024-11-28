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
class DarkSecureWalletWalkthroughFourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 14),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
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
                          color: ColorConstant.gray800),
                      Container(
                          width: getHorizontalSize(322),
                          margin: getMargin(left: 28, top: 21, right: 28),
                          child: Text("Write Down Your Seed Phrase",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold32)),
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
                              color: ColorConstant.gray800)),
                      Container(
                          margin: getMargin(top: 23, bottom: 5),
                          decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
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
                              child: Padding(
                                  padding: getPadding(all: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(right: 8),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "1. material"),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "2. wrist",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "3. option",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "4. skate",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "5. harbor",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "6. pear",
                                                          margin: getMargin(
                                                              top: 12))
                                                    ]))),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(left: 8),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "7. space"),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "8. bench",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "9. payment",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "10. bomb",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "11. hint",
                                                          margin: getMargin(
                                                              top: 12)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          width:
                                                              getHorizontalSize(
                                                                  158),
                                                          text: "12. maze",
                                                          margin: getMargin(
                                                              top: 12))
                                                    ])))
                                      ]))))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          text: "Next",
                          variant:  ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold16)
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

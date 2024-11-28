import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';

class DarkSettingsAboutCristaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
         bool isDark = state.isDarkTheme;
        return Scaffold(
          
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "About EternalWallet", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: 'assets/Logo.png',
                          height: getVerticalSize(69),
                          width: getHorizontalSize(132)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("EternalWallet V 1.0",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24.copyWith(
                                color: isDark ? ColorConstant.white : ColorConstant.black900
                              ))),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Privacy Policy",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                               color: isDark ? ColorConstant.white : ColorConstant.black900,
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Terms of Services",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                          color: isDark ? ColorConstant.white : ColorConstant.black900,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Attributions",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                           color: isDark ? ColorConstant.white : ColorConstant.black900,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Support Center",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                               color: isDark ? ColorConstant.white : ColorConstant.black900,
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rate us",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                           color: isDark ? ColorConstant.white : ColorConstant.black900,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Visit Our Website",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                           color: isDark ? ColorConstant.white : ColorConstant.black900,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 31, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Contact us",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                           color: isDark ? ColorConstant.white : ColorConstant.black900,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 1))
                              ]))
                    ])));
      },
    ));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}

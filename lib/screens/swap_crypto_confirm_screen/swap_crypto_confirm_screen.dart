
import 'package:eternalwallet/screens/swap_crypto_confirm_screen/widgets/listname_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';

import '../swap_crypto_successful_dialog/swap_crypto_successful_dialog.dart';

class DarkSwapCryptoConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(text: "Swap", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 18, right: 24, bottom: 18),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              svgPath: isDark ? ImageConstant.imgChainethereumeth : null,
                              imagePath: !isDark ? ImageConstant.darkEth : null,
                              height: getSize(48),
                              width: getSize(48),
                              margin: getMargin(top: 3, bottom: 2)),
                          Padding(
                              padding: getPadding(left: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("0.855 ETH",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold24),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("TRC20",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtUrbanistSemiBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(0.2))))
                                  ]))
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 15),
                          child: CustomIcon( isCenter: false, icon: Icons.arrow_downward_rounded,size: 30,),
                        ),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgChaintetherusdt,
                                  height: getSize(48),
                                  width: getSize(48),
                                  margin: getMargin(top: 2, bottom: 2)),
                              Padding(
                                  padding: getPadding(left: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("1,138.64 USDT",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold24),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Text("TRC20",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2))))
                                      ]))
                            ])),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 25, bottom: 5),
                                padding: getPadding(all: 20),
                                decoration: AppDecoration.outlineGray8002
                                    .copyWith(
                                      border: Border.all(color: isDark ? ColorConstant.gray800 : ColorConstant.gray300),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("From",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2))),
                                            Text("Wallet (0x7131C...f8E696)",
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
                                          padding: getPadding(top: 24),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                      Padding(
                                          padding: getPadding(top: 24),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Provider",
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
                                                Text("1inch Network",
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
                                          padding: getPadding(top: 25),
                                          child: Column(
                                            children: [
                                              ListnameItemWidget(
                                                  "Max Slipage", "2%"),
                                              ListnameItemWidget(
                                                  "Network Fee", "0.025 ETH"),
                                            ],
                                          ))
                                    ])))
                      ]),
                )),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray8001,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                        height: 45,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return DarkSwapCryptoSuccessfulDialog();
                                });
                          },
                          margin: getMargin(top: 18, bottom: 5),
                          variant: ButtonVariant.FillOrange400,
                          text: "Confirm")
                    ])));
      },
    ));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}

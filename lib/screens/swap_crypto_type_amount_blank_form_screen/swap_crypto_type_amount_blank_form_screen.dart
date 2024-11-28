import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../swap_crypto_confirm_screen/swap_crypto_confirm_screen.dart';

class DarkSwapCryptoTypeAmountBlankFormScreen extends StatefulWidget {
  @override
  State<DarkSwapCryptoTypeAmountBlankFormScreen> createState() =>
      _DarkSwapCryptoTypeAmountBlankFormScreenState();
}

class _DarkSwapCryptoTypeAmountBlankFormScreenState
    extends State<DarkSwapCryptoTypeAmountBlankFormScreen> {
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
          appBar: CustomAppBar(
              height: getVerticalSize(69),
              leadingWidth: 52,
              leading: GotoBack(context),
              title: AppbarTitle(text: "Swap", margin: getMargin(left: 16))),
          body: SingleChildScrollView(
            child: Container(
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
                                      border: Border.all(
                                        color: isDark
                                            ? ColorConstant.gray800
                                            : ColorConstant.gray300,
                                      ),
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
                                                    Container(
                                                        width: 50,
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: TextFormField(
                                                          keyboardType: TextInputType.number,
                                                        
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedBorder:
                                                                InputBorder
                                                                    .none,
                                                            disabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            errorBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedErrorBorder:
                                                                InputBorder
                                                                    .none,
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            hintText: '0.855',
                                                          ),
                                                          cursorColor: Colors
                                                              .transparent,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: isDark
                                                                ? ColorConstant
                                                                    .white
                                                                : ColorConstant
                                                                    .gray900,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
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
                                        child: Stack(children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 22, bottom: 21),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: isDark
                                                      ? ColorConstant.gray800
                                                      : Color.fromARGB(
                                                          41, 158, 158, 158))),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: isDark
                                                    ? ColorConstant.gray900
                                                    : ColorConstant.white,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            margin: getMargin(left: 250),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.amber50014,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            margin: getMargin(left: 250),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAutolayouthorizontal2,
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
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
                                                    Container(
                                                        width: 50,
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: TextFormField(
                                                          keyboardType: TextInputType.number,
                                                          decoration:
                                                              InputDecoration(
                                                                
                                                            enabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedBorder:
                                                                InputBorder
                                                                    .none,
                                                            disabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            errorBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedErrorBorder:
                                                                InputBorder
                                                                    .none,
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            hintText: '0',
                                                          ),
                                                          cursorColor: Colors
                                                              .transparent,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: isDark
                                                                ? ColorConstant
                                                                    .white
                                                                : ColorConstant
                                                                    .gray900,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          ),
                                                        )),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 9),
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
                                    height: getVerticalSize(35),
                                    decoration: select1 ? AppDecoration.gradientOrangeA200Orange40001.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16)  :AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: InkWell(
                                      onTap: () {
                                    setState(() {
                                      select1 = !select1;
                                      if (select1) {
                                        select2 = false;
                                        select3 = false;
                                        select4 = false;
                                      }
                                    });
                                  },
                                      child: Center(
                                        child: Text("25%",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:  AppStyle
                                                .txtUrbanistSemiBold14Orange400
                                                .copyWith(
                                                  color: select1 ? ColorConstant.white : ColorConstant.orange400,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))),
                                      ),
                                    )),
                               
                               
                                Container(
                                    width: getHorizontalSize(86),
                                    height: getVerticalSize(35),
                                    decoration: select2 ? AppDecoration.gradientOrangeA200Orange40001.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16)  :AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: InkWell(
                                      onTap: () {
                                    setState(() {
                                      select2 = !select1;
                                      if (select2) {
                                        select1 = false;
                                        select3 = false;
                                        select4 = false;
                                      }
                                    });
                                  },
                                      child: Center(
                                        child: Text("50%",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:  AppStyle
                                                .txtUrbanistSemiBold14Orange400
                                                .copyWith(
                                                  color: select2 ? ColorConstant.white : ColorConstant.orange400,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))),
                                      ),
                                    )),
                               
                                Container(
                                    width: getHorizontalSize(86),
                                    height: getVerticalSize(35),
                                    decoration: select3 ? AppDecoration.gradientOrangeA200Orange40001.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16)  :AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: InkWell(
                                      onTap: () {
                                    setState(() {
                                      select3 = !select3;
                                      if (select3) {
                                        select2 = false;
                                        select1 = false;
                                        select4 = false;
                                      }
                                    });
                                  },
                                      child: Center(
                                        child: Text("75%",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:  AppStyle
                                                .txtUrbanistSemiBold14Orange400
                                                .copyWith(
                                                  color: select3 ? ColorConstant.white : ColorConstant.orange400,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))),
                                      ),
                                    )),
                               
                                Container(
                                    width: getHorizontalSize(86),
                                    height: getVerticalSize(35),
                                    decoration: select4 ? AppDecoration.gradientOrangeA200Orange40001.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16)  :AppDecoration
                                        .txtOutlineOrange400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder16),
                                    child: InkWell(
                                      onTap: () {
                                    setState(() {
                                      select4 = !select4;
                                      if (select4) {
                                        select2 = false;
                                        select3 = false;
                                        select1 = false;
                                      }
                                    });
                                  },
                                      child: Center(
                                        child: Text("100%",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:  AppStyle
                                                .txtUrbanistSemiBold14Orange400
                                                .copyWith(
                                                  color: select4 ? ColorConstant.white : ColorConstant.orange400,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))),
                                      ),
                                    )),
                               
                               
                               
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("1 ETH = 1,334.2 USDT",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                    ])),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DarkSwapCryptoConfirmScreen()),
                    // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                  );
                },
                height: getVerticalSize(50),
                text: "Swap",
                margin: getMargin(top: 18, bottom: 5),
                variant: ButtonVariant.FillOrange400),
          ),
        );
      },
    ));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

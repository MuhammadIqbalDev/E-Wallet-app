import 'dart:developer';

import 'package:eternalwallet/screens/settings_help_center_screen/widgets/autolayouthoriz_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DarkSettingsHelpCenterScreen extends StatefulWidget {
  @override
  State<DarkSettingsHelpCenterScreen> createState() =>
      _DarkSettingsHelpCenterScreenState();
}

class _DarkSettingsHelpCenterScreenState
    extends State<DarkSettingsHelpCenterScreen> {
  TextEditingController searchController = TextEditingController();
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;

  bool expand1 = true;
  bool expand2 = false;
  bool expand3 = false;
  bool expand4 = false;
  bool expand5 = false;
  bool expand6 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Help Center", margin: getMargin(left: 16)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIcon(size: 30, icon: Icons.help),
                  )
                ]),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 18, bottom: 18),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    InkWell(
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
                                      child: AutolayouthorizItemWidget(
                                        title: "General",
                                        selected: select1,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          select2 = !select2;
                                          if (select2) {
                                            select1 = false;
                                            select3 = false;
                                            select4 = false;
                                          }
                                        });
                                      },
                                      child: AutolayouthorizItemWidget(
                                        title: "Account",
                                        selected: select2,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          select3 = !select3;
                                          if (select3) {
                                            select2 = false;
                                            select1 = false;
                                            select4 = false;
                                          }
                                        });

                                        log("$select1 $select2 $select3");
                                      },
                                      child: AutolayouthorizItemWidget(
                                        title: "Services",
                                        selected: select3,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          select4 = !select4;
                                          if (select1) {
                                            select2 = false;
                                            select3 = false;
                                            select1 = false;
                                          }
                                        });
                                      },
                                      child: AutolayouthorizItemWidget(
                                        title: "Application",
                                        selected: select4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))),
                        CustomSearchView(
                            controller: searchController,
                            hintText: "Search",
                            margin: getMargin(left: 24, top: 24, right: 24),
                            prefix: Container(
                                margin: getMargin(
                                    left: 20, top: 18, right: 12, bottom: 18),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            suffix: Container(
                                margin: getMargin(
                                    left: 30, top: 18, right: 20, bottom: 18),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgSettingsOrange400)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56))),
                        Container(
                            margin: getMargin(left: 24, top: 24, right: 24),
                            padding: getPadding(
                                left: 24, top: 22, right: 24, bottom: 22),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            expand1 = !expand1;
                                          });
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "What is EternalWallet?",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold18)),
                                              CustomIcon(
                                                size: 30,
                                                icon: Icons.arrow_drop_down,
                                                color: ColorConstant.orange400,
                                              )
                                            ]),
                                      )),
                                 expand1 ? Column(
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: isDark
                                                  ? ColorConstant.gray800
                                                  : ColorConstant.gray300)),
                                      Container(
                                          width: getHorizontalSize(322),
                                          margin: getMargin(top: 16, right: 9),
                                          child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2))))
                                    ],
                                  ) : SizedBox(),
                                ])),
                        Container(
                            margin: getMargin(left: 24, top: 24, right: 24),
                            padding: getPadding(
                                left: 24, top: 23, right: 24, bottom: 23),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                              children: [
                                InkWell(
                                   onTap: () {
                                          setState(() {
                                            expand2 = !expand2;
                                          });
                                        },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "How to sent cryptocurrency?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18)),
                                        CustomIcon(
                                          size: 30,
                                          icon: Icons.arrow_drop_down,
                                          color: ColorConstant.orange400,
                                        )
                                      ]),
                                ),
                             expand2 ?   Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Container(
                                        width: getHorizontalSize(322),
                                        margin: getMargin(top: 16, right: 9),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ],
                                ) : SizedBox(),
                              ],
                            )),
                        Container(
                            margin: getMargin(left: 24, top: 24, right: 24),
                            padding: getPadding(
                                left: 24, top: 23, right: 24, bottom: 23),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                          setState(() {
                                            expand3 = !expand3;
                                          });
                                        },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "How to receive cryptocurrency?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18)),
                                        CustomIcon(
                                          size: 30,
                                          icon: Icons.arrow_drop_down,
                                          color: ColorConstant.orange400,
                                        )
                                      ]),
                                ),
                               expand3 ? Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Container(
                                        width: getHorizontalSize(322),
                                        margin: getMargin(top: 16, right: 9),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ],
                                ) : SizedBox(),
                              ],
                            )),
                        Container(
                            margin: getMargin(left: 24, top: 24, right: 24),
                            padding: getPadding(
                                left: 24, top: 23, right: 24, bottom: 23),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                              children: [
                                InkWell(
                                   onTap: () {
                                          setState(() {
                                            expand4 = !expand4;
                                          });
                                        },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "How can I buy cryptocurrency?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18)),
                                        CustomIcon(
                                          size: 30,
                                          icon: Icons.arrow_drop_down,
                                          color: ColorConstant.orange400,
                                        )
                                      ]),
                                ),
                               expand4 ? Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Container(
                                        width: getHorizontalSize(322),
                                        margin: getMargin(top: 16, right: 9),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ],
                                ) : SizedBox()
                              ],
                            )),
                        Container(
                            margin: getMargin(
                                left: 24, top: 24, right: 24, bottom: 5),
                            padding: getPadding(
                                left: 24, top: 23, right: 24, bottom: 23),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                              children: [
                                InkWell(
                                   onTap: () {
                                          setState(() {
                                            expand5 = !expand5;
                                          });
                                        },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text("How do I exit the app?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18)),
                                        CustomIcon(
                                          size: 30,
                                          icon: Icons.arrow_drop_down,
                                          color: ColorConstant.orange400,
                                        )
                                      ]),
                                ),
                            expand5 ?    Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Container(
                                        width: getHorizontalSize(322),
                                        margin: getMargin(top: 16, right: 9),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ],
                                ) : SizedBox(),
                              ],
                            )),
                        Container(
                            margin: getMargin(
                                left: 24, top: 24, right: 24, bottom: 5),
                            padding: getPadding(
                                left: 24, top: 23, right: 24, bottom: 23),
                            decoration: AppDecoration.outlineBlack9000c
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                              children: [
                                InkWell(
                                   onTap: () {
                                          setState(() {
                                            expand6 = !expand6;
                                          });
                                        },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "How can I deactivate my account?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18)),
                                        CustomIcon(
                                          size: 30,
                                          icon: Icons.arrow_drop_down,
                                          color: ColorConstant.orange400,
                                        )
                                      ]),
                                ),
                            expand6 ?    Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: isDark
                                                ? ColorConstant.gray800
                                                : ColorConstant.gray300)),
                                    Container(
                                        width: getHorizontalSize(322),
                                        margin: getMargin(top: 16, right: 9),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ],
                                ) : SizedBox(),
                              ],
                            ))
                      ])),
            ));
      },
    ));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

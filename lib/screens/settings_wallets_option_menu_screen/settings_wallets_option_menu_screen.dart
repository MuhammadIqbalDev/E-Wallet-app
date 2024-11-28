import 'package:eternalwallet/bloc/theme_switch_bloc.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DarkSettingsWalletsOptionMenuScreen extends StatefulWidget {
  @override
  State<DarkSettingsWalletsOptionMenuScreen> createState() =>
      _DarkSettingsWalletsOptionMenuScreenState();
}

class _DarkSettingsWalletsOptionMenuScreenState
    extends State<DarkSettingsWalletsOptionMenuScreen> {
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title:
                    AppbarTitle(text: "Wallets", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgIconpluscomp,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: Container(
                height: getVerticalSize(814),
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 21, right: 24, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                        setState(() {
                            select1 = !select1;
                          if (select1) {
                            select2 = false;
                            select3 = false;
                          }
                        });
                        },
                        child: Stack(
                          children: [
                           select1 ? Positioned(
                                right: 35,
                                bottom: 10,
                                child: Icon(
                                  Icons.check,
                                  color: ColorConstant.orange400,
                                )) : SizedBox(),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse,
                                              height: getSize(48),
                                              width: getSize(48),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(24))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 20, top: 1),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("AndrewAinsley",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold20),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text(
                                                            "Multi-Coin Wallet",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistSemiBold14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ])),
                                        ],
                                      ),
                                      getOptions()
                                    ])),
                          ],
                        ),
                      ),
                      Align(
                          // alignment: Alignment.topCenter,
                          child: Padding(
                              padding: getPadding(top: 20),
                              child: SizedBox(
                                  width: getHorizontalSize(380),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: state.isDarkTheme
                                          ? ColorConstant.gray800
                                          : ColorConstant.gray300)))),
                      InkWell(
                        onTap: () {
                          select2 = !select2;
                          setState(() {
                            if (select2) {
                            select1 = false;
                            select3 = false;
                          }
                          });
                        },
                        child: Stack(
                          children: [
                           select2 ? Positioned(
                                right: 35,
                                bottom: 10,
                                child: Icon(
                                  Icons.check,
                                  color: ColorConstant.orange400,
                                )) : SizedBox(),
                            Align(
                                // alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse48x48,
                                                  height: getSize(48),
                                                  width: getSize(48),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(24))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20, top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Text("AndrewAinsley 2",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold20),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Text(
                                                                "Multi-Coin Wallet",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2))))
                                                      ])),
                                            ],
                                          ),
                                          getOptions()
                                        ]))),
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: getPadding(top: 20),
                              child: SizedBox(
                                  width: getHorizontalSize(380),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: state.isDarkTheme
                                          ? ColorConstant.gray800
                                          : ColorConstant.gray300)))),
                      InkWell(
                        onTap: () {
                         setState(() {
                            select3 = !select3;
                          if (select3) {
                            select1 = false;
                            select2 = false;
                          }
                         });
                        },
                        child: Stack(
                          children: [
                          select3 ?  Positioned(
                                right: 35,
                                bottom: 10,
                                child: Icon(
                                  Icons.check,
                                  color: ColorConstant.orange400,
                                )) : SizedBox(),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse1,
                                                  height: getSize(48),
                                                  width: getSize(48),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(24)),
                                                  margin: getMargin(
                                                      top: 1, bottom: 1)),
                                              Padding(
                                                  padding: getPadding(left: 20),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Text("Andrew Metacoin",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold20),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "Imported Wallet",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistSemiBold14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(
                                                                                0.2))))
                                                      ])),
                                            ],
                                          ),
                                          getOptions()
                                        ]))),
                          ],
                        ),
                      ),
                    ])));
      },
    ));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  getOptions() {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return PopupMenuButton<int>(
          color:
              state.isDarkTheme ? ColorConstant.black900 : ColorConstant.white,
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Row(children: [
                Padding(
                    padding: getPadding(left: 12),
                    child: Text("Edit",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold16
                            .copyWith(letterSpacing: getHorizontalSize(0.2))))
              ]),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Row(children: [
                CustomImageView(
                    svgPath: ImageConstant.imgEye,
                    height: getSize(20),
                    width: getSize(20)),
                Padding(
                    padding: getPadding(left: 12),
                    child: Text("Show Secret Phrase",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold16
                            .copyWith(letterSpacing: getHorizontalSize(0.2))))
              ]),
            ),
            PopupMenuItem<int>(
                value: 2,
                child: Row(children: [
                  CustomIcon(size: 20, icon: Icons.delete_outline_outlined),
                  Padding(
                      padding: getPadding(left: 12),
                      child: Text("Delete",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold16
                              .copyWith(letterSpacing: getHorizontalSize(0.2))))
                ])),
          ],
          onSelected: (item) {},
          child: CustomIcon(size: 25, icon: Icons.more_vert_outlined),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';

class DarkNotificationListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
       
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Notification", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                     imagePath: ImageConstant.imgClockWhiteA700,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(left: 24, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    variant: IconButtonVariant.FillOrange50014,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAutolayouthorizontal4)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 7, bottom: 5),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Security Updates!",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtUrbanistRomanBold20),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("20 Dec, 2022",
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
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text("|",
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
                                                                            0.2)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, bottom: 1),
                                                        child: Text("20:49 PM",
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
                                                  ]))
                                        ])),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(50),
                                    text: "New",
                                    margin: getMargin(top: 0, bottom: 0),
                                    variant: ButtonVariant.FillOrange400,
                                    shape: ButtonShape.Square,
                                    // padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanBold18)
                              ]),
                              Container(
                                  width: getHorizontalSize(372),
                                  margin: getMargin(top: 17, right: 7),
                                  child: Text(
                                      "Now EternalWallet has a Two-Factor Authentication. Try it now to make your account more secure.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillOrange50014,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal5)),
                                    Padding(
                                        padding: getPadding(
                                            left: 5, top: 7, bottom: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Multiple Wallet Features!",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Row(children: [
                                                    Text("19 Dec, 2022",
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
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text("|",
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
                                                                            0.2)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, bottom: 1),
                                                        child: Text("18:35 PM",
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
                                                  ]))
                                            ])),
                                            Spacer(),
                                    CustomButton(
                                        height: getVerticalSize(24),
                                        width: getHorizontalSize(41),
                                        text: "New",
                                        // margin: getMargin(
                                        //     left: 35, top: 18, bottom: 18),
                                        variant: ButtonVariant.FillOrange400,
                                        shape: ButtonShape.Square,
                                        // padding: ButtonPadding.PaddingAll11,
                                        fontStyle:
                                            ButtonFontStyle.UrbanistRomanBold18)
                                  ])),
                              Container(
                                  width: getHorizontalSize(356),
                                  margin: getMargin(top: 17, right: 23),
                                  child: Text(
                                      "Now you can also connect EternalWallet with your other wallets. Try the service now.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(top: 21, right: 58),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillOrange50014,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal6)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 7, bottom: 5),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "EternalWallet Has Updates!",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Row(children: [
                                                        Text("14 Dec, 2022",
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
                                                                            0.2))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text("|",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                bottom: 1),
                                                            child: Text(
                                                                "10:52 AM",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                                ])))
                                  ])),
                              Container(
                                  width: getHorizontalSize(365),
                                  margin: getMargin(top: 17, right: 14),
                                  child: Text(
                                      "Now you can make multiple crypto transactions at once with low gas fees.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(top: 21, right: 83),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillOrange50014,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal7)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 7, bottom: 5),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("New Updates Available!",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Row(children: [
                                                        Text("12 Dec, 2022",
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
                                                                            0.2))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 1),
                                                            child: Text("|",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                bottom: 1),
                                                            child: Text(
                                                                "15:38 PM",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                                ])))
                                  ])),
                              Container(
                                  width: getHorizontalSize(378),
                                  margin: getMargin(top: 17),
                                  child: Text(
                                      "Update EternalWallet now to get access to the latest features, NFTs, & cryptocurrencies. ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillOrange50014,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal8)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 7, bottom: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Import NFTs",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Row(children: [
                                                    Text("12 Dec, 2022",
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
                                                        padding: getPadding(
                                                            left: 8, top: 1),
                                                        child: Text("|",
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
                                                                            0.2)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 8, bottom: 1),
                                                        child: Text("14:27 PM",
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
                                                  ]))
                                            ]))
                                  ])),
                              Container(
                                  width: getHorizontalSize(358),
                                  margin: getMargin(top: 17, right: 21),
                                  child: Text(
                                      "Now you can import NFT via EternalWallet. Try the service now in menu NFTs.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(top: 24, right: 62),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 60,
                                        width: 60,
                                        variant:
                                            IconButtonVariant.FillOrange50014,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal9)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16, top: 6, bottom: 5),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "Account Setup Successful!",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Row(children: [
                                                        Text("10 Dec, 2022",
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
                                                                            0.2))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Text("|",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Text(
                                                                "17:46 PM",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                                ])))
                                  ])),
                              Container(
                                  width: getHorizontalSize(380),
                                  margin: getMargin(top: 16),
                                  child: Text(
                                      "Your account has been created successfully. Enjoy our services and cryptocurrencies.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ]))))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}

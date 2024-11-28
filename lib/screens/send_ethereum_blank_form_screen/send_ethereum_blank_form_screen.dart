import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class DarkSendEthereumBlankFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Send Ethereum", margin: getMargin(left: 16)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomIcon(size: 23, icon: Icons.more_horiz_outlined,isCircle: true,),
                  )
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.fillGray90001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 4),
                                child: Text("Recipient As",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRegular16Gray500
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 3, bottom: 3),
                                child: Text("Paste",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistSemiBold14Orange400
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            CustomImageView(
                                svgPath: ImageConstant
                                    .imgIconlylightoutlinescanOrange400,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(left: 12, top: 2, bottom: 2))
                          ])),
                      Container(
                          margin: getMargin(top: 24),
                          padding: getPadding(
                              left: 20, top: 17, right: 20, bottom: 17),
                          decoration: AppDecoration.fillGray90001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Amount ETH",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRegular16Gray500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Text("Max",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text("Total Offer Amount: 0 ETH (0 USD)",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray800)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Recents",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("Clear",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold14Orange400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Padding(
                          padding: getPadding(top: 23, right: 34),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 8, bottom: 9),
                                child: Text("0x7131CA84856...68de58848f8Ed83",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18Gray400
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])),
                      Padding(
                          padding: getPadding(top: 24, right: 39),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse40x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 8, bottom: 9),
                                child: Text("0xd1b18942201...eaa1270af78b0a4",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18Gray400
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "Continue",
                          margin: getMargin(top: 26, bottom: 5),
                          variant: ButtonVariant.FillGray400)
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}

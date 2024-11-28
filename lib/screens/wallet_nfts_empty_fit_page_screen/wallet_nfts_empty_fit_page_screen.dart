import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_circleimage.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_bottom_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DarkWalletNftsEmptyFitPageScreen extends StatelessWidget {
  TextEditingController stateinactiveController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            54,
          ),
          leadingWidth: 52,
          leading: AppbarCircleimage(
            svgPath: ImageConstant.imgTypelogodefault,
            margin: getMargin(
              left: 24,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgIconlylightoutlinescanWhiteA700,
              margin: getMargin(
                left: 24,
              ),
            ),
            AppbarImage(
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              svgPath: ImageConstant.imgIconlylightouWhiteA700,
              margin: getMargin(
                left: 20,
                right: 24,
              ),
            ),
          ],
        ),
        body: Container(
          height: getVerticalSize(
            738,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getVerticalSize(
                  356,
                ),
                width: getHorizontalSize(
                  428,
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 35,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "99,677.55",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold48,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Text(
                              "AndrewAinsley",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.yellow50,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 19,
                              right: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      right: 16,
                                      bottom: 2,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 60,
                                          width: 60,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 13,
                                          ),
                                          child: Text(
                                            "Send",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold16WhiteA700
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      right: 16,
                                      bottom: 1,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 60,
                                          width: 60,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal60x60,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 13,
                                          ),
                                          child: Text(
                                            "Receive",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold16WhiteA700
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 60,
                                          width: 60,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal1,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Buy",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold16WhiteA700
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 60,
                                          width: 60,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAutolayouthorizontal2,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "Swap",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold16WhiteA700
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 51,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextFormField(
                              width: getHorizontalSize(
                                190,
                              ),
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: stateinactiveController,
                              hintText: "Tokens",
                              margin: getMargin(
                                bottom: 1,
                              ),
                              variant: TextFormFieldVariant.UnderLineGray800,
                              fontStyle:
                                  TextFormFieldFontStyle.UrbanistSemiBold18,
                              textInputAction: TextInputAction.done,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "NFTs",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold18Orange400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 13,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      190,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        4,
                                      ),
                                      thickness: getVerticalSize(
                                        4,
                                      ),
                                      color: ColorConstant.orange400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage160x160,
                        height: getSize(
                          160,
                        ),
                        width: getSize(
                          160,
                        ),
                        margin: getMargin(
                          top: 56,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Text(
                          "No NFTs Yet",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold24Gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Text(
                          "Import NFTs",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20Orange400,
                        ),
                      ),
                    
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
       
      ),
    );
  }



}

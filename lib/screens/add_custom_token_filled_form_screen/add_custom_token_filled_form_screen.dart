import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DarkAddCustomTokenFilledFormScreen extends StatelessWidget {
  TextEditingController everethController = TextEditingController();

  TextEditingController eethController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 13),
                    onTap: () {
                      onTapArrowleft9(context);
                    }),
                title: AppbarTitle(
                    text: "Add Custom Token", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 20, top: 19, right: 20, bottom: 19),
                              decoration: AppDecoration.outlineGray800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Network",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20),
                                          Spacer(),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Ethereum",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold18)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(left: 12))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray800)),
                                    Container(
                                        margin: getMargin(top: 23),
                                        padding:
                                            getPadding(top: 17, bottom: 17),
                                        decoration: AppDecoration.fillGray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                  "0x16dcc0ec...aec62bf7c61037",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistSemiBold16WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Text("Paste",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold14Orange400
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconlylightoutlinescan,
                                                  height: getSize(20),
                                                  width: getSize(20))
                                            ])),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: everethController,
                                        hintText: "EverETH",
                                        margin: getMargin(top: 24),
                                        variant:
                                            TextFormFieldVariant.FillGray400),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: eethController,
                                        hintText: "EETH",
                                        margin: getMargin(top: 24),
                                        variant:
                                            TextFormFieldVariant.FillGray400,
                                        textInputAction: TextInputAction.done),
                                    Container(
                                        width: getHorizontalSize(340),
                                        margin: getMargin(top: 24),
                                        padding: getPadding(
                                            left: 20,
                                            top: 17,
                                            right: 20,
                                            bottom: 17),
                                        decoration: AppDecoration.txtFillGray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder16),
                                        child: Text("9",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold16WhiteA700
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ]))),
                      Container(
                          margin: getMargin(top: 24),
                          padding: getPadding(top: 10, bottom: 10),
                          decoration: AppDecoration.fillYellow70033.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgWarning,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(
                                        left: 12, top: 32, bottom: 32)),
                                Container(
                                    width: getHorizontalSize(320),
                                    margin: getMargin(
                                        left: 10,
                                        top: 12,
                                        right: 17,
                                        bottom: 10),
                                    child: Text(
                                        "Anyone can create token, including a fake versions of existing tokens. Learn more about scams and security risks.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Text("What is Custom Token?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold16Orange400
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.2))))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                decoration: AppDecoration.outlineGray8002,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          text: "OK",
                          variant: ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold16)
                    ]))));
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}

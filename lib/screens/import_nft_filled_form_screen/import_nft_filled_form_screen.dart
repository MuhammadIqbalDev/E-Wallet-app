import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DarkImportNftFilledFormScreen extends StatelessWidget {
  TextEditingController zipcodeController = TextEditingController();

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
                    margin: getMargin(left: 24, top: 12, bottom: 15),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                title: AppbarTitle(
                    text: "Import NFT", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 17, right: 24, bottom: 17),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Address",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "0x7131CA84856767f3126a2C75468d48f8E696",
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.FillGray90001,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistSemiBold16),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("ID",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: zipcodeController,
                          hintText: "9167",
                          margin: getMargin(top: 16, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                decoration: AppDecoration.outlineGray8002,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.outlineGray8002,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(58),
                                        text: "Cancel",
                                        margin: getMargin(right: 6),
                                        variant: ButtonVariant.FillGray800,
                                        shape: ButtonShape.CircleBorder29,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle: ButtonFontStyle
                                            .UrbanistRomanBold16)),
                                Expanded(
                                    child: CustomButton(
                                        text: "Import",
                                        margin: getMargin(left: 6),
                                        variant:
                                            ButtonVariant.OutlineOrangeA2003f,
                                        shape: ButtonShape.CircleBorder29,
                                        padding: ButtonPadding.PaddingT18,
                                        fontStyle: ButtonFontStyle
                                            .UrbanistRomanBold16))
                              ]))
                    ]))));
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}

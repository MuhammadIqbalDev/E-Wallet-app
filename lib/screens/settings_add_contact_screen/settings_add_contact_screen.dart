import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';

import '../scan_qr_code_screen/scan_qr_code_screen.dart';

// ignore_for_file: must_be_immutable
class DarkSettingsAddContactScreen extends StatefulWidget {
  @override
  State<DarkSettingsAddContactScreen> createState() => _DarkSettingsAddContactScreenState();
}

class _DarkSettingsAddContactScreenState extends State<DarkSettingsAddContactScreen> {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController memooneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Add Contact", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20),
                      CustomTextFormField(
                          padding:TextFormFieldPadding.PaddingT18_1,
                          controller: nameoneController,
                          hintText: "Jenny Wilson",
                          margin: getMargin(top: 19),),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                               CustomTextFormField(
                          padding: TextFormFieldPadding.PaddingT18_1,
                          controller: addressController,
                          hintText: "0x7131CA84856...C75468de58848",
                          margin: getMargin(top: 16),
                          suffix: Container(
                            width: getVerticalSize(80),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    ClipboardData? cdata =
                                        await Clipboard.getData(
                                            Clipboard.kTextPlain);
                                    if (cdata != null) {
                                      if (cdata.text != null) {
                                        if (cdata.text!.isNotEmpty) {
                                          setState(() {
                                            addressController.text = cdata.text!;
                                          });
                                        }
                                      }
                                    }
                                  },
                                  child: Text("Paste",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold14Orange400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return DarkScanQrCodeScreen(getpop: true,);
                                    }));
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconlylightoutlinescanOrange400,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(left: 12)),
                                )
                              ],
                            ),
                          ),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                        ),
                       
                       Padding(
                          padding: getPadding(top: 32),
                          child: Text("Memo",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomTextFormField(
                         padding:TextFormFieldPadding.PaddingT18_1,
                          controller: memooneController,
                          hintText: "Memo",
                          margin: getMargin(top: 19, bottom: 5),
                          fontStyle: TextFormFieldFontStyle.UrbanistRegular16,
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                        onTap: () => Navigator.of(context).pop(),
                          text: "Add Contact",
                          variant: ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18)
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}

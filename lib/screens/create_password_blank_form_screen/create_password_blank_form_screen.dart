import 'dart:developer';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_checkbox.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../secure_wallet_walkthrough_screen/secure_wallet_walkthrough_screen.dart';

// ignore_for_file: must_be_immutable
class DarkCreatePasswordBlankFormScreen extends StatefulWidget {
  @override
  State<DarkCreatePasswordBlankFormScreen> createState() =>
      _DarkCreatePasswordBlankFormScreenState();
}

class _DarkCreatePasswordBlankFormScreenState
    extends State<DarkCreatePasswordBlankFormScreen> {
  TextEditingController _passwordController = TextEditingController();

  TextEditingController _passwordoneController = TextEditingController();

  bool isSelectedSwitch = false;
  bool pass1 = true;
  bool pass2 = true;

  bool isSelectedSwitch1 = false;
  bool _isChecked = false;

  TextEditingController passwordtwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(200),
                    imagePath: ImageConstant.imgGroupGray800)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 20, right: 24, bottom: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: isDark ? ColorConstant.gray800 : ColorConstant.gray300),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("Create Password",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold18Orange400b))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(357),
                                  margin:
                                      getMargin(left: 11, top: 17, right: 11),
                                  child: Text(
                                      "This password will unlock your EternalWallet wallet only on this device.",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtUrbanistRomanMedium18
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Text("New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          CustomTextFormField(
                            isObscureText: pass1 ? true : false,
                            controller: _passwordController,
                            hintText: "Password",
                            margin: getMargin(top: 16),
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                                margin: getMargin(
                                    left: 20, top: 18, right: 12, bottom: 18),
                                child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            suffix: InkWell(
                              onTap: () {
                                    log('pass1 = $pass1');
                                    setState(() {
                                      pass1 = !pass1;
                                    });
                                  },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 20, bottom: 18),
                                  child:pass1 ? CustomImageView(
                                      svgPath: ImageConstant.imgDashboard): Icon(Icons.remove_red_eye,color:ColorConstant.orange400)),
                            )  ,
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                          ),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("Must be at least 8 characters",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Confirm New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          CustomTextFormField(
                              controller: _passwordoneController,
                              hintText: "Password",
                              margin: getMargin(top: 16),
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 18, right: 12, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              suffix: InkWell(
                                onTap: () {
                                    log('pass2 = $pass2');
                                    setState(() {
                                      pass2 = !pass2;
                                    });
                                  },
                                child: Container(
                                    margin: getMargin(
                                        left: 30, top: 18, right: 20, bottom: 18),
                                    child: pass2 ? CustomImageView(
                                      svgPath: ImageConstant.imgDashboard): Icon(Icons.remove_red_eye,color:ColorConstant.orange400 ,)),
                              ),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              isObscureText:pass2 ? true : false),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("Password must be match",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Sign in with Face ID?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    CustomSwitch(
                                        margin: getMargin(bottom: 1),
                                        value: isSelectedSwitch,
                                        onChanged: (value) {
                                          setState(() {
                                            isSelectedSwitch = value;
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Sign in with Biometrics?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    CustomSwitch(
                                        margin: getMargin(bottom: 0),
                                        value: isSelectedSwitch1,
                                        onChanged: (value) {
                                          setState(() {
                                            isSelectedSwitch1 = value;
                                          });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                          CustomCheckbox(
                            value: _isChecked,
                            onChange: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            },
                            text: Padding(
                                padding:
                                    getPadding(top: 0, right: 1, bottom: 5),
                                child: Container(
                                    width: getHorizontalSize(300),
                                    margin: getMargin(left: 5, top: 10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "I understand that EternalWallet cannot recover this password for me. ",
                                              style: TextStyle(
                                                  color:
                                                     isDark ? ColorConstant.whiteA700 :ColorConstant.gray800,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.2))),
                                          TextSpan(
                                              text: "Learn more",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.orange400,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing:
                                                      getHorizontalSize(0.2)))
                                        ]),
                                        textAlign: TextAlign.left))),
                          )
                        ]))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DarkSecureWalletWalkthroughScreen()),
                          );
                        },
                        child: CustomButton(
                          text: "Create Password",
                          margin: getMargin(
                            top: 20,
                          ),
                          variant: ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18b,
                        ),
                      ),
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

// ignore_for_file: must_be_immutable
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_checkbox.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../fingerprint_scan_screen/fingerprint_scan_screen.dart';

class DarkImportSeedPhraseBlankFormScreen extends StatefulWidget {
  @override
  State<DarkImportSeedPhraseBlankFormScreen> createState() =>
      _DarkImportSeedPhraseBlankFormScreenState();
}

class _DarkImportSeedPhraseBlankFormScreenState
    extends State<DarkImportSeedPhraseBlankFormScreen> {
  TextEditingController seedphraseoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();
  bool pass1 = true;
  bool pass2 = true;
  bool pass3 = true;
  bool isSelectedSwitch = false;
  bool isCheckBox = false;
  bool isSelectedSwitch1 = false;

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
                title: AppbarTitle(
                    text: "Import From Seed", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgIconlylightoutlinescan,
                      margin:
                          getMargin(left: 24, top: 12, right: 24, bottom: 15))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 18, right: 24, bottom: 18),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Seed Phrase",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20),
                          CustomTextFormField(
                              isObscureText: pass1 ? true : false,
                              controller: seedphraseoneController,
                              hintText: "Seed Phrase",
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT40,
                              suffix: InkWell(
                              onTap: () {
                                    
                                    setState(() {
                                      pass1 = !pass1;
                                    });
                                  },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 20, bottom: 18),
                                  child:pass1 ? CustomImageView(
                                      svgPath: ImageConstant.imgDashboard): Icon(Icons.remove_red_eye,color:ColorConstant.orange400)),
                            ) ,
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(100))),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("New Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          CustomTextFormField(
                              
                              controller: passwordController,
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
                                    setState(() {
                                      pass2 = !pass2;
                                    });
                                  },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 20, bottom: 18),
                                  child:pass2? CustomImageView(
                                      svgPath: ImageConstant.imgDashboard): Icon(Icons.remove_red_eye,color:ColorConstant.orange400)),
                            ) ,
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              isObscureText: pass2 ? true : false),
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
                              
                              controller: passwordoneController,
                              hintText: "Password",
                              margin: getMargin(top: 16),
                              textInputAction: TextInputAction.done,
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
                                   
                                    setState(() {
                                      pass3 = !pass3;
                                    });
                                  },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 20, bottom: 18),
                                  child:pass3 ? CustomImageView(
                                      svgPath: ImageConstant.imgDashboard): Icon(Icons.remove_red_eye,color:ColorConstant.orange400)),
                            ) ,
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              isObscureText: pass3 ? true : false),
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
                                        margin: getMargin(bottom: 1),
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
                            value: isCheckBox,
                            onChange: (value) {
                              setState(() {
                                isCheckBox = value;
                              });
                            },
                            text: Padding(
                                padding: getPadding(left: 0, top: 2),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "I agree to EternalWallet ",
                                          style: TextStyle(
                                              color: isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing:
                                                  getHorizontalSize(0.2))),
                                      TextSpan(
                                          text: "Term & Conditions.",
                                          style: TextStyle(
                                              color: ColorConstant.orange400,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w600,
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))
                                    ]),
                                    textAlign: TextAlign.left)),
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
                                    DarkFingerprintScanScreen()),
                          );
                        },
                        child: CustomButton(
                            height: getVerticalSize(58),
                            text: "Import",
                            variant: ButtonVariant.FillOrange400
                            ),
                      )
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
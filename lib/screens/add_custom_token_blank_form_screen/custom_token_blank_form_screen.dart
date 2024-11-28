import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../add_custom_token_select_network_screen/add_custom_token_select_network_screen.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

// ignore_for_file: must_be_immutable
class DarkAddCustomTokenBlankFormScreen extends StatefulWidget {
  @override
  State<DarkAddCustomTokenBlankFormScreen> createState() => _DarkAddCustomTokenBlankFormScreenState();
}

class _DarkAddCustomTokenBlankFormScreenState extends State<DarkAddCustomTokenBlankFormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contractController = TextEditingController();

  TextEditingController symbolController = TextEditingController();

  TextEditingController decimalsController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Add Custom Token", margin: getMargin(left: 16))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 20, right: 24, bottom: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 20, top: 19, right: 20, bottom: 19),
                                  decoration: AppDecoration.allgreyBorder,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                                Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkAddCustomTokenSelectNetworkScreen();
                            }));
                                          },
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Network",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBold20),
                                                Spacer(),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: Text("Ethereum",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold18)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    margin: getMargin(left: 12))
                                              ]),
                                        ),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:isDark ? ColorConstant.gray800 : ColorConstant.gray300)),
                                        Container(
                                            margin: getMargin(top: 23),
                                            padding: getPadding(
                                                left: 10,
                                                top: 17,
                                                right: 10,
                                                bottom: 17),
                                            decoration: AppDecoration.allgreyBorder,
                                            child: 
                                                CustomTextFormField(
                                          suffix: Container(
                                            width: 80,
                                            child: Row(children: [  Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 1),
                                                        child: Text("Paste",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
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
                                                        width: getSize(20),
                                                        margin:
                                                            getMargin(left: 12))
                                                  ],),
                                          ),
                                            controller: contractController,
                                            hintText: "Contract Address",
                                            margin: getMargin(top: 24),
                                            padding: TextFormFieldPadding.PaddingT18_1,
                                            variant: TextFormFieldVariant
                                                .FillGray90001,
                                            fontStyle: TextFormFieldFontStyle
                                                .UrbanistRegular16),
                                                  
                                                
                                               ),
                                        CustomTextFormField(
                                          
                                            controller: nameController,
                                            hintText: "Name",
                                            margin: getMargin(top: 24),
                                            padding: TextFormFieldPadding.PaddingT18_1,
                                            variant: TextFormFieldVariant
                                                .FillGray90001,
                                            fontStyle: TextFormFieldFontStyle
                                                .UrbanistRegular16),
                                        CustomTextFormField(
                                        
                                            controller: symbolController,
                                            hintText: "Symbol",
                                            margin: getMargin(top: 24),
                                            padding: TextFormFieldPadding.PaddingT18_1,
                                            variant:TextFormFieldVariant
                                                .FillGray90001,
                                            fontStyle: TextFormFieldFontStyle
                                                .UrbanistRegular16),
                                        CustomTextFormField(
                                           
                                            controller: decimalsController,
                                            hintText: "Decimals",
                                            padding: TextFormFieldPadding.PaddingT18_1,
                                            margin: getMargin(top: 24),
                                            variant:TextFormFieldVariant
                                                .FillGray90001,
                                            fontStyle: TextFormFieldFontStyle
                                                .UrbanistRegular16,
                                            textInputAction:
                                                TextInputAction.done)
                                      ]))),
                          Container(
                              margin: getMargin(top: 24),
                              padding: getPadding(top: 10, bottom: 10),
                              decoration: AppDecoration.fillYellow70033.copyWith(borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                            style: AppStyle
                                                .txtUrbanistRomanMedium14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 25, bottom: 5),
                              child: Text("What is Custom Token?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Orange400
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))
                        ]))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray8002,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                         onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DarkWalletTokensFullPage();
              }));
            },
                          height: getVerticalSize(58),
                          text: "OK",
                          variant: ButtonVariant.FillOrange400,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18b)
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}

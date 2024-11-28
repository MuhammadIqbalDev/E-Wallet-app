import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DarkSettingsGeneralScreen extends StatefulWidget {
  @override
  State<DarkSettingsGeneralScreen> createState() =>
      _DarkSettingsGeneralScreenState();
}

class _DarkSettingsGeneralScreenState extends State<DarkSettingsGeneralScreen> {
  TextEditingController priceController = TextEditingController();

  TextEditingController currentlanguageController = TextEditingController();

  TextEditingController searchengineController = TextEditingController();
  int selected = 1;
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title:
                    AppbarTitle(text: "General", margin: getMargin(left: 16))),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Currency Conversion",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Text(
                                "Updated Sat Dec 24, 2022 10:11:27 GMT+0700 (US Time)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.2)))),
                        
                        CustomTextFormField(
                          
                            variant: TextFormFieldVariant.FillGray400,
                            padding: TextFormFieldPadding.PaddingT18_1,
                            controller: priceController,
                            hintText: "USD - United States Dollar",
                            margin: getMargin(top: 16),
                            fontStyle: TextFormFieldFontStyle.DropDownTextField,
                            suffix: Container(
                              width: 50,
                              child:  CustomIcon(size: 20,icon: Icons.arrow_drop_down,),
                            ),
                            
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56))),
                        Padding(
                            padding: getPadding(top: 42),
                            child: Text("Primary Currency",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        Container(
                            width: getHorizontalSize(360),
                            margin: getMargin(top: 14, right: 19),
                            child: Text(
                                "Select native to prioritize displaying values in the native currency of the chain (e.g. ETH). Select Fiat to prioritize displaying values in your selected fiat currency.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Row(children: [
                              Container(
                                  width: getHorizontalSize(84),
                                  child: Row(children: [
                                    Container(
                                        padding: getPadding(all: 4),
                                        decoration: AppDecoration
                                            .txtOutlineOrange400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selected = 1;
                                                  });
                                                },
                                                child: Container(
                                                    height: getSize(11),
                                                    width: getSize(11),
                                                    decoration: BoxDecoration(
                                                        color: selected == 1
                                                            ? ColorConstant
                                                                .orange400
                                                            : null,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    5)))),
                                              )
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("Native",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold16WhiteA700
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ])),
                              Container(
                                  width: getHorizontalSize(63),
                                  margin: getMargin(left: 32),
                                  child: Row(children: [
                                    Container(
                                      padding: getPadding(all: 4),
                                      decoration: AppDecoration
                                          .txtOutlineOrange400
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder14),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selected = 2;
                                          });
                                        },
                                        child: Container(
                                            height: getSize(11),
                                            width: getSize(11),
                                            decoration: BoxDecoration(
                                                color: selected == 2
                                                    ? ColorConstant.orange400
                                                    : null,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10)))),
                                      ),
                                    ),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("Fiat",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold16WhiteA700
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))))
                                  ]))
                            ])),
                        Padding(
                            padding: getPadding(top: 42),
                            child: Text("Current Language",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        Container(
                            width: getHorizontalSize(320),
                            margin: getMargin(top: 14, right: 59),
                            child: Text(
                                "Translate the application to a different supported language.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.2)))),
                        CustomTextFormField(
                            padding: TextFormFieldPadding.PaddingT18_1,
                            controller: currentlanguageController,
                            hintText: "English - US",
                            margin: getMargin(top: 14),
                            fontStyle: TextFormFieldFontStyle.DropDownTextField,
                            suffix: Container(
                              width: 50,
                              child:  CustomIcon(size: 20,icon: Icons.arrow_drop_down,),
                            ),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56))),
                        Padding(
                            padding: getPadding(top: 42),
                            child: Text("Search Engine",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20)),
                        Container(
                            width: getHorizontalSize(350),
                            margin: getMargin(top: 14, right: 29),
                            child: Text(
                                "Change the default search engine used when entering search terms in the URL bar.",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanMedium14
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.2)))),
                        CustomTextFormField(
                            padding: TextFormFieldPadding.PaddingT18_1,
                            controller: searchengineController,
                            hintText: "Google",
                            margin: getMargin(top: 17, bottom: 5),
                            textInputAction: TextInputAction.done,
                            fontStyle: TextFormFieldFontStyle.DropDownTextField,
                            suffix: Container(
                              width: 50,
                              child:  CustomIcon(size: 20,icon: Icons.arrow_drop_down,),
                            ),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)))
                      ])),
            ),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 36),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hide Tokens Without Balance",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20),
                      IntrinsicHeight(
                          child: CustomSwitch(
                              value: isSelectedSwitch,
                              onChanged: (value) {
                                setState(() {
                                  isSelectedSwitch = value;
                                });
                              }))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:eternalwallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

bool shownfts = false;

// ignore_for_file: must_be_immutable
class DarkImportNftBlankFormScreen extends StatefulWidget {
  @override
  State<DarkImportNftBlankFormScreen> createState() =>
      _DarkImportNftBlankFormScreenState();
}

class _DarkImportNftBlankFormScreenState
    extends State<DarkImportNftBlankFormScreen> {
  @override
  void initState() {
    // shownfts = false;
    super.initState();
  }

  TextEditingController addressprefixController = TextEditingController();

  TextEditingController entercollectiblController = TextEditingController();

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
                      CustomTextFormField(
                          padding: TextFormFieldPadding.PaddingT18_1,
                          controller: addressprefixController,
                          hintText: "0x...",
                          margin: getMargin(top: 16),
                          fontStyle: TextFormFieldFontStyle.UrbanistRegular16),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("ID",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomTextFormField(
                          controller: entercollectiblController,
                          hintText: "Enter the Collectible ID",
                          margin: getMargin(top: 16, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT18_1,
                          fontStyle: TextFormFieldFontStyle.UrbanistRegular16,
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray8002,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          // decoration: AppDecoration.outlineGray8002,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Expanded(
                                child: CustomButton(
                                  onTap: ()=>Navigator.of(context).pop(),
                                    height: getVerticalSize(58),
                                    text: "Cancel",
                                    margin: getMargin(right: 6),
                                    variant: ButtonVariant.FillAmber50014,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingT18,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanBold18Orange400)),
                            Expanded(
                                child: CustomButton(
                                    onTap: () {
                                      setState(() {
                                        shownfts = true;
                                      });
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return DarkWalletTokensFullPage(OptionsNft: true,);
                                      }));
                                    },
                                    height: getVerticalSize(58),
                                    text: "Import",
                                    margin: getMargin(left: 6),
                                    variant: ButtonVariant.FillOrange400,
                                    shape: ButtonShape.CircleBorder29,
                                    padding: ButtonPadding.PaddingT18,
                                    fontStyle:
                                        ButtonFontStyle.UrbanistRomanBold18))
                          ]))
                    ]))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}

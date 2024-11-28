
import 'package:eternalwallet/screens/add_token_screen/widgets/listchainethere_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import '../add_custom_token_blank_form_screen/custom_token_blank_form_screen.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:eternalwallet/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

// ignore_for_file: must_be_immutable
class DarkAddTokenScreen extends StatefulWidget {
  @override
  State<DarkAddTokenScreen> createState() => _DarkAddTokenScreenState();
}

class _DarkAddTokenScreenState extends State<DarkAddTokenScreen> {
  TextEditingController searchController = TextEditingController();
  bool isShowList = true;
  List filteredCoins = allcoins;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(72),
          leadingWidth: 52,
          leading: GotoBack(context),
          centerTitle: true,
          title: CustomSearchView(
              width: getHorizontalSize(292),
              controller: searchController,
              onchange: (value) {
                if (value.isNotEmpty) {
                  setState(() {
                    filteredCoins = allcoins
                        .where((coin) => coin['name']
                            .toString()
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase()))
                        .toList();
                  });
                } else {
                  setState(() {
                    filteredCoins = allcoins;
                  });
                }

                // if (toLowerCase().contains(value.toLowerCase())||
                //     (value).toLowerCase().isEmpty) {
                //        setState(() {
                //     isShowList = true;
                //   });
                // } else {
                //   setState(() {
                //     isShowList = false;
                //   });
                // }
              },
              hintText: "Search Tokens",
              prefix: Container(
                  child: Center(
                      child: Container(
                width: 25,
                child: CustomIcon(
                  icon: Icons.search,
                  size: 25,
                ),
              ))),
              prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)),
              suffix: Padding(
                  padding: EdgeInsets.only(right: getHorizontalSize(15)),
                  child: IconButton(
                      onPressed: () {
                        searchController.clear();
                        setState(() {
                          filteredCoins = allcoins;
                        });
                      },
                      icon: Icon(Icons.clear, color: Colors.grey.shade600)))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkAddCustomTokenBlankFormScreen();
                    }));
                  },
                  child: CustomIcon(size: 30, icon: Icons.add)),
            )
          ]),
      body: Container(
          height: getVerticalSize(810),
          width: double.maxFinite,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: getPadding(left: 24, right: 24),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          filteredCoins.isNotEmpty
                              ? Expanded(
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: ListView.separated(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return Padding(
                                                padding: getPadding(
                                                    top: 16.0, bottom: 16.0),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(380),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: isDark
                                                            ? ColorConstant
                                                                .gray800
                                                            : ColorConstant
                                                                .gray300)));
                                          },
                                          itemCount: filteredCoins.length,
                                          itemBuilder: (context, index) {
                                            return ListchainethereItemWidget(
                                              image: filteredCoins[index]
                                                  ['image'],
                                              name: filteredCoins[index]
                                                  ['name'],
                                            );
                                          })))
                              : SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        height: 200,
                                        imagePath: ImageConstant.imgImage,
                                      ),
                                      Text(
                                        "Not Found",
                                        style: AppStyle.txtUrbanistRomanBold32,
                                      ),
                                      Text(
                                        "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtUrbanistRegular16
                                            .copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: getPadding(all: 24),
                    // decoration: AppDecoration.outlineGray8001,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [])))
          ])),
      bottomNavigationBar: isShowList
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkWalletTokensFullPage();
                    }));
                  },
                  text: "OK",
                  margin: getMargin(bottom: 12),
                  variant: ButtonVariant.OutlineOrangeA2003f,
                  shape: ButtonShape.CircleBorder29,
                  padding: ButtonPadding.PaddingT18,
                  fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
            )
          : SizedBox(),
    ));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}

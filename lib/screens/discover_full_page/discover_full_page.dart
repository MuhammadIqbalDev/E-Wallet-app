
import 'package:eternalwallet/screens/discover_full_page/widgets/listchainsolana_item_widget.dart';
import 'package:eternalwallet/screens/discover_full_page/widgets/sectionlistdefi_item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_circleimage.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../staking_screen/staking_screen.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

// ignore_for_file: must_be_immutable
class DarkDiscoverFullPage extends StatelessWidget {
  List sectionlistdefiItemList = [
    {'id': 1, 'groupBy': "DeFi Tokens"},
    {'id': 2, 'groupBy': "DeFi Tokens"},
    {'id': 3, 'groupBy': "DeFi Tokens"},
    {'id': 4, 'groupBy': "Lending / Borrowing"},
    {'id': 5, 'groupBy': "Lending / Borrowing"},
    {'id': 6, 'groupBy': "Lending / Borrowing"},
    {'id': 7, 'groupBy': "Smart Chain / BSC"},
    {'id': 8, 'groupBy': "Smart Chain / BSC"},
    {'id': 9, 'groupBy': "Smart Chain / BSC"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              height: getVerticalSize(
                68,
              ),
              leadingWidth: 52,
              leading: AppbarCircleimage(
                svgPath: ImageConstant.imgTypelogodefault,
                margin: getMargin(
                  left: 24,
                  top: 13,
                  bottom: 14,
                ),
              ),
              title: AppbarTitle(
                text: "Discover",
                margin: getMargin(
                  left: 16,
                ),
              ),
              actions: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomIcon(size: 25, icon: Icons.search),
                 )
              ],
            ),
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 20,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    right: 24,
                    bottom: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Staking",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 4,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return DarkStakingScreen(
                                    title: "Staking",
                                    imagePath: ImageConstant.imgChainsolanasol,
                                  );
                                }));
                              },
                              child: Text(
                                "See All",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold16Orange400
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                          right: 0,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 16.5,
                                bottom: 16.5,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  380,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: state.isDarkTheme
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemCount: allcoins.length-8,
                          itemBuilder: (context, index) {
                            return ListchainsolanaItemWidget(
                              name: allcoins[index+2]['name'],
                              image: allcoins[index+2]['image'],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DeFi Tokens",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkStakingScreen(
                                      title: "DeFi Token",
                                      imagePath:
                                          ImageConstant.imgChainthetafuel,
                                    );
                                  }));
                                },
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Orange400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: allcoins.length-6,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 16.5,
                                bottom: 16.5,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  380,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: state.isDarkTheme
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemBuilder: (context, index) {
                            return SectionlistdefiItemWidget(
                              name: allcoins[index+1]['name'],
                              image: allcoins[index+1]['image'],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lending/Borrowing",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkStakingScreen(
                                      title: "Lending/Borrowing",
                                      imagePath:
                                          ImageConstant.imgChainthetafuel,
                                    );
                                  }));
                                },
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Orange400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: allcoins.length-6,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 16.5,
                                bottom: 16.5,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  380,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: state.isDarkTheme
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemBuilder: (context, index) {
                            return SectionlistdefiItemWidget(
                              name: allcoins[index+3]['name'],
                              image: allcoins[index+3]['image'],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Smart Chain/BCS",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkStakingScreen(
                                      title: "Smart Chain/BCS",
                                      imagePath:
                                          ImageConstant.imgChainthetafuel,
                                    );
                                  }));
                                },
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Orange400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: allcoins.length-6,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: getPadding(
                                top: 16.5,
                                bottom: 16.5,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  380,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: state.isDarkTheme
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemBuilder: (context, index) {
                            return SectionlistdefiItemWidget(
                              name: allcoins[index+1]['name'],
                              image: allcoins[index+1]['image'],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                        color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DeFi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20,
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 3,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkStakingScreen(
                                      title: "DeFi",
                                      imagePath:
                                          ImageConstant.imgChainthetafuel,
                                    );
                                  }));
                                },
                                child: Text(
                                  "See All",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Orange400
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                          right: 109,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgChaindecentraland,
                              height: getSize(
                                48,
                              ),
                              width: getSize(
                                48,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 12,
                                bottom: 11,
                              ),
                              child: Text(
                                "Decentraland (MANA)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgChainsyscoinsys,
                              height: getSize(
                                48,
                              ),
                              width: getSize(
                                48,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 14,
                                bottom: 9,
                              ),
                              child: Text(
                                "Syscoin (SYS)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color:  state.isDarkTheme ? ColorConstant.gray800:ColorConstant.gray300,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgChainmoneroxmr,
                              height: getSize(
                                48,
                              ),
                              width: getSize(
                                48,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 12,
                                bottom: 11,
                              ),
                              child: Text(
                                "Monero (XMR)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: bottombar(context, 2),
          );
        },
      ),
    );
  }
}

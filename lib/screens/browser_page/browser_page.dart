import 'dart:developer';
import 'package:eternalwallet/screens/browser_page/widgets/listchainpancak_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/theme_switch_bloc.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_circleimage.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import '../history_screen/history_screen.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

// ignore_for_file: must_be_immutable
class DarkBrowserPage extends StatefulWidget {
  @override
  State<DarkBrowserPage> createState() => _DarkBrowserPageState();
}

class _DarkBrowserPageState extends State<DarkBrowserPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: (context, state) {
          bool isDark = state.isDarkTheme;
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
                text: "Browser",
                margin: getMargin(
                  left: 16,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomIcon(
                    size: 20,
                    icon: Icons.more_horiz_outlined,
                    isCircle: true,
                  ),
                ),
              ],
            ),
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 19,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "Search",
                        margin: getMargin(
                          right: 24,
                        ),
                        padding: SearchViewPadding.PaddingT18_1,
                        prefix: Container(
                          margin: getMargin(
                            left: 20,
                            top: 18,
                            right: 12,
                            bottom: 18,
                          ),
                          child: CustomIcon(size: 20, icon: Icons.search),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            56,
                          ),
                        ),
                        suffix: Container(
                          margin: getMargin(
                            left: 30,
                            top: 18,
                            right: 20,
                            bottom: 18,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgMicrophone,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            56,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 24,
                          right: 43,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath:isDark ? ImageConstant.imgMail : null,
                                    imagePath: !isDark ? ImageConstant.darkEth : null ,
                                    height: getVerticalSize(
                                      59,
                                    ),
                                    width: getHorizontalSize(
                                      36,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "Ethereum",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 10,
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUnion,
                                    height: getVerticalSize(
                                      39,
                                    ),
                                    width: getHorizontalSize(
                                      51,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Solana",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 7,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVector,
                                    height: getVerticalSize(
                                      44,
                                    ),
                                    width: getHorizontalSize(
                                      51,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Polygon",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEye,
                                    height: getVerticalSize(
                                      54,
                                    ),
                                    width: getHorizontalSize(
                                      53,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Shiba Inu",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 25,
                          right: 40,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGoogleRed500,
                                    height: getSize(
                                      52,
                                    ),
                                    width: getSize(
                                      52,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    child: Text(
                                      "Google",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: "assets/images/bitcoin.jpeg",
                                    height: getSize(
                                      54,
                                    ),
                                    width: getSize(
                                      54,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Bitcoin",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCloseYellow700,
                                    height: getVerticalSize(
                                      54,
                                    ),
                                    width: getHorizontalSize(
                                      53,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Binance",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroupWhiteA700,
                                    height: getSize(
                                      54,
                                    ),
                                    width: getSize(
                                      54,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Text(
                                      "Decentra...",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRomanMedium12WhiteA700
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark
                              ? ColorConstant.gray800
                              : ColorConstant.gray300,
                          endIndent: getHorizontalSize(
                            24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "History",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 5,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkHistoryScreen(
                                      title: "History",
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
                     history.isNotEmpty ? Padding(
                        padding: getPadding(
                          top: 22,
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
                                top: 16.0,
                                bottom: 16.0,
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
                                  color: isDark
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemCount: history.length-3,
                          itemBuilder: (context, index) {
                            return ListchainpancakItemWidget(
                              title:history[index]['name'] ,
                              image: history[index]['image'],
                              desc:history[index]['desc'] ,
                              title1:history[index+1]['name'] ,
                              image1: history[index+1]['image'],
                              desc1:history[index+1]['desc'] ,
                            );
                          },
                        ),
                      ) : Center(
                        child: Text("Not Found",style: AppStyle.txtUrbanistRomanBold14b,),
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
                          color: isDark
                              ? ColorConstant.gray800
                              : ColorConstant.gray300,
                          endIndent: getHorizontalSize(
                            24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular",
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
                                  log("I am clickef");
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return DarkHistoryScreen(title: "Popular");
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
                          top: 22,
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
                                  color: isDark
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300,
                                ),
                              ),
                            );
                          },
                          itemCount: popular.length-1,
                          itemBuilder: (context, index) {
                            return ListchainpancakItemWidget(
                              title:popular[index]['name'] ,
                              image: popular[index]['image'],
                              desc:popular[index]['desc'] ,
                              title1:popular[index+1]['name'] ,
                              image1: popular[index+1]['image'],
                              desc1:popular[index+1]['desc'] ,
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
                          color: isDark
                              ? ColorConstant.gray800
                              : ColorConstant.gray300,
                          endIndent: getHorizontalSize(
                            24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: bottombar(context, 3),
          );
        },
      ),
    );
  }
}

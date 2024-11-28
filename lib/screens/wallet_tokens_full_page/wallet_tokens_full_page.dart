// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../add_token_screen/add_token_screen.dart';
import '../browser_page/browser_page.dart';
import '../buy_crypto_options_screen/buy_crypto_options_screen.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../discover_full_page/discover_full_page.dart';
import '../import_nft_blank_form_screen/import_nft_blank_form_screen.dart';
import '../notification_empty_screen/notification_empty_screen.dart';
import '../receive_crypto_options_screen/receive_crypto_options_screen.dart';
import '../receive_crypto_options_screen/widgets/listchainethere2_item_widget.dart';

import '../scan_qr_code_screen/scan_qr_code_screen.dart';
import '../send_crypto_options_screen/send_crypto_options_screen.dart';
import '../settings_full_page/settings_full_page.dart';
import '../swap_crypto_type_amount_blank_form_screen/swap_crypto_type_amount_blank_form_screen.dart';
import '../wallet_nfts_metafacely_nft_fit_page_screen/widgets/gridnftname1_item_widget.dart';
import '../wallet_nfts_nekochimin_full_page/widgets/gridtype_item_widget.dart';

// ignore_for_file: must_be_immutable
class DarkWalletTokensFullPage extends StatefulWidget {
  final bool OptionsNft;
  const DarkWalletTokensFullPage({this.OptionsNft = false}) : super();
  @override
  State<DarkWalletTokensFullPage> createState() =>
      _DarkWalletTokensFullPageState();
}

class _DarkWalletTokensFullPageState extends State<DarkWalletTokensFullPage> {
  TextEditingController stateinactiveController = TextEditingController();
  @override
  void initState() {
    OptionsNft = widget.OptionsNft;
    // TODO: implement initState
    super.initState();
  }

  bool OptionsNft = false;
  bool metafacely = true;
  bool nekochimin = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            height: getVerticalSize(
              54,
            ),
            leadingWidth: 52,
            leading: CustomImageView(
              svgPath: ImageConstant.imgTypelogodefault,
              height: getSize(
                28,
              ),
              width: getSize(
                28,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  14,
                ),
              ),
              margin: getMargin(
                left: 24,
              ),
            ),
            actions: [
              AppbarImage(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DarkScanQrCodeScreen()),
                  );
                },
                height: getSize(
                  28,
                ),
                width: getSize(
                  28,
                ),
                svgPath: ImageConstant.imgIconlylightoutlinescan,
                // margin: getMargin(
                //   left: 24,
                // ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DarkNotificationEmptyScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomIcon(size: 30, icon: Icons.notifications_none),
                ),
              )
            ],
          ),
          body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: getMargin(
                  bottom: 0,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            fit: BoxFit.fill,
                            svgPath: ImageConstant.imgFrameYellow50,
                            height: getVerticalSize(
                              320,
                            ),
                            width: MediaQuery.of(context).size.width,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "99,677.55",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtnumberUrbanistRomanBold48,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "AndrewAinsley",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistSemiBold18.copyWith(
                                    color: isDark
                                        ? ColorConstant.gray800
                                        : ColorConstant.whiteA700,
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    getPadding(top: 19, left: 20, right: 20),
                                child: Divider(
                                  height: getVerticalSize(
                                    4,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.yellow50,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 22,
                                  top: 19,
                                  right: 22,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          right: 16,
                                          bottom: 2,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkSendCryptoOptionsScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              height: 60,
                                              width: 60,
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAutolayouthorizontal,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 13,
                                              ),
                                              child: Text(
                                                "Send",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16
                                                    .copyWith(
                                                  color: isDark
                                                      ? ColorConstant.gray800
                                                      : ColorConstant.whiteA700,
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          right: 16,
                                          bottom: 1,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: CustomIconButton(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            DarkReceiveCryptoOptionsScreen()),
                                                    // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                  );
                                                },
                                                height: 60,
                                                width: 60,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgAutolayouthorizontal60x60,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 13,
                                              ),
                                              child: Text(
                                                "Receive",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16
                                                    .copyWith(
                                                  color: isDark
                                                      ? ColorConstant.gray800
                                                      : ColorConstant.whiteA700,
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          right: 16,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return DarkBuyCryptoOptionsScreen();
                                                }));
                                              },
                                              height: 60,
                                              width: 60,
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAutolayouthorizontal1,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 15,
                                              ),
                                              child: Text(
                                                "Buy",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16
                                                    .copyWith(
                                                  color: isDark
                                                      ? ColorConstant.gray800
                                                      : ColorConstant.whiteA700,
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DarkSwapCryptoTypeAmountBlankFormScreen()),
                                                  // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                                );
                                              },
                                              height: 60,
                                              width: 60,
                                              child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAutolayouthorizontal2,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 15,
                                              ),
                                              child: Text(
                                                "Swap",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16
                                                    .copyWith(
                                                  color: isDark
                                                      ? ColorConstant.gray800
                                                      : ColorConstant.whiteA700,
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                    0.2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          right: 24,
                        ),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          OptionsNft = false;
                                        });
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tokens",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: !OptionsNft
                                                ? AppStyle
                                                    .txtUrbanistSemiBold18Orange400
                                                    .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.2,
                                                    ),
                                                  )
                                                : AppStyle
                                                    .txtUrbanistRegular16Gray500
                                                    .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.2,
                                                    ),
                                                  ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 13,
                                            ),
                                            child: SizedBox(
                                              width: getHorizontalSize(
                                                190,
                                              ),
                                              child: Divider(
                                                height: getVerticalSize(
                                                  4,
                                                ),
                                                thickness: getVerticalSize(
                                                  !OptionsNft ? 4 : 2,
                                                ),
                                                color: !OptionsNft
                                                    ? ColorConstant.orange400
                                                    : ColorConstant.gray300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          OptionsNft = true;
                                        });
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "NFTs",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: OptionsNft
                                                ? AppStyle
                                                    .txtUrbanistSemiBold18Orange400
                                                    .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.2,
                                                    ),
                                                  )
                                                : AppStyle
                                                    .txtUrbanistRegular16Gray500
                                                    .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.2,
                                                    ),
                                                  ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 13,
                                            ),
                                            child: SizedBox(
                                              width: getHorizontalSize(
                                                190,
                                              ),
                                              child: Divider(
                                                height: getVerticalSize(
                                                  4,
                                                ),
                                                thickness: getVerticalSize(
                                                  OptionsNft ? 4 : 2,
                                                ),
                                                color: OptionsNft
                                                    ? ColorConstant.orange400
                                                    : ColorConstant.gray300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                                padding: getPadding(top: 10),
                                child: OptionsNft
                                    ? !shownfts
                                        ? Column(
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage160x160,
                                                height: getSize(
                                                  160,
                                                ),
                                                width: getSize(
                                                  160,
                                                ),
                                                margin: getMargin(
                                                  top: 56,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 20,
                                                ),
                                                child: Text(
                                                  "No NFTs Yet",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold24Gray300,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 22,
                                                ),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return DarkImportNftBlankFormScreen();
                                                    }));
                                                  },
                                                  child: Text(
                                                    "Import NFTs",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBold20Orange400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse,
                                                      height: getSize(
                                                        32,
                                                      ),
                                                      width: getSize(
                                                        32,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 16,
                                                        top: 5,
                                                        bottom: 2,
                                                      ),
                                                      child: Text(
                                                        "Metafacely NFT",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold20,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            metafacely =
                                                                !metafacely;
                                                          });
                                                        },
                                                        child: Icon(
                                                          metafacely
                                                              ? Icons
                                                                  .keyboard_arrow_down_sharp
                                                              : Icons
                                                                  .keyboard_arrow_up_sharp,
                                                          color: ColorConstant
                                                              .orange400,
                                                          size: 30,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 24,
                                                ),
                                                child: metafacely
                                                    ? GridView.builder(
                                                        shrinkWrap: true,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                            245,
                                                          ),
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                            16,
                                                          ),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                            16,
                                                          ),
                                                        ),
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        itemCount: 12,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Gridnftname1ItemWidget();
                                                        },
                                                      )
                                                    : SizedBox(),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse,
                                                      height: getSize(
                                                        32,
                                                      ),
                                                      width: getSize(
                                                        32,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 16,
                                                        top: 3,
                                                        bottom: 4,
                                                      ),
                                                      child: Text(
                                                        "Nekochimin",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold20,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            nekochimin =
                                                                !nekochimin;
                                                          });
                                                        },
                                                        child: Icon(
                                                          nekochimin
                                                              ? Icons
                                                                  .keyboard_arrow_down_sharp
                                                              : Icons
                                                                  .keyboard_arrow_up_sharp,
                                                          color: ColorConstant
                                                              .orange400,
                                                          size: 30,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 24,
                                                ),
                                                child: nekochimin
                                                    ? GridView.builder(
                                                        shrinkWrap: true,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                            245,
                                                          ),
                                                          crossAxisCount: 2,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                            16,
                                                          ),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                            16,
                                                          ),
                                                        ),
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        itemCount: 12,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return GridtypeItemWidget();
                                                        },
                                                      )
                                                    : SizedBox(),
                                              ),
                                            ],
                                          )
                                    : ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  top: 16.0, bottom: 16.0),
                                              child: SizedBox(
                                                  width: getHorizontalSize(380),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: state.isDarkTheme
                                                          ? ColorConstant
                                                              .gray800
                                                          : ColorConstant
                                                              .gray300)));
                                        },
                                        itemCount: allcoins.length,
                                        itemBuilder: (context, index) {
                                          return Listchainethere2ItemWidget(
                                              allcoins[index]['name'],
                                              allcoins[index]['amount']
                                                  as double,
                                              allcoins[index]['dollar']
                                                  as double,
                                              allcoins[index]['coin'] as double,
                                              allcoins[index]['cper'] as double,
                                              allcoins[index]['image'],
                                              "details");
                                        })),
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
                                color: state.isDarkTheme
                                    ? ColorConstant.gray800
                                    : ColorConstant.gray300,
                              ),
                            ),
                            CustomButton(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return DarkAddTokenScreen();
                                }));
                              },
                              height: getVerticalSize(
                                45,
                              ),
                              text: "Add Token",
                              margin: getMargin(
                                top: 23,
                              ),
                              variant: ButtonVariant.FillAmber50014,
                              shape: ButtonShape.RoundedBorder22,
                              padding: ButtonPadding.PaddingT11,
                              fontStyle:
                                  ButtonFontStyle.UrbanistRomanBold18Orange400,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgIconplusComponentadditionalIcons,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: bottombar(context, 1),
        );
      },
    );
  }
}

bottombar(BuildContext context, int selected) {
  return Container(
    height: 100,
    // color: Colors.red,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkWalletTokensFullPage();
                    }));
                  },
              child: Column(
                children: [
                  CustomImageView(
                    
                    svgPath: selected == 1
                        ? ImageConstant.imgCamera
                        : ImageConstant.imgIconlylightoutlinewallet,
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      25,
                    ),
                    margin: getMargin(
                      top: 5,
                      bottom: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "Wallet",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular16Gray500.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkDiscoverFullPage();
                    }));
                  },
              child: Column(
                children: [
                  CustomImageView(
                    
                    svgPath:
                        selected != 2 ? ImageConstant.imgIconlylightou : null,
                    imagePath: selected == 2 ? ImageConstant.darkdiscover : null,
                    height: getSize(
                      32,
                    ),
                    width: getSize(
                      32,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      "Discover",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular16Gray500.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkBrowserPage();
                    }));
                  },
              child: Column(
                children: [
                  CustomImageView(
                    
                    svgPath: selected != 3 ? ImageConstant.imgGroup : null,
                    imagePath: selected == 3
                        ? ImageConstant.imgAutolayouthorizontal3
                        : null,
                    height: getSize(
                      25,
                    ),
                    width: getSize(
                      25,
                    ),
                    margin: getMargin(
                      top: 2,
                      bottom: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text("Browser",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRegular16Gray500.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DarkSettingsFullPage();
                    }));
                  },
              child: Column(
                children: [
                  CustomImageView(
                    
                    svgPath: selected != 4 ? ImageConstant.imgSettings : null,
                    imagePath: selected == 4 ? ImageConstant.darksetting : null,
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      25,
                    ),
                    margin: getMargin(
                      top: 2,
                      bottom: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text("Settings",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRegular16Gray500.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

List allcoins = [
  {
    'id': 1,
    'name': "Etheurem",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      svgPath: isDark ? ImageConstant.imgChainethereumeth : null,
      imagePath: !isDark ? ImageConstant.darkEth : null,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Bitcoin",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.bitcoin,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Tether",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.tether,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Solana",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.solana,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Polygon",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.polygon,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "USD Coin",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.usdCoin,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "DAI",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.dai,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Klaytn",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.klaytn,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
//   {'id':1,'name':"Shiba lnu" ,'amount':2000.0,'dollar':200.0,'coin':123.7,'cper':175.0,
//  'image':CustomImageView(
//                          imagePath: ImageConstant.shibalnu,
//                         height: getSize(48),
//                         width: getSize(48),),
//                         'color':isDark ? ColorConstant.white : ColorConstant.gray800
//                         },
  {
    'id': 1,
    'name': "Synthetix",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.synthetix,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Cardano",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.cardano,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "BNB",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.bnb,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 1,
    'name': "Decentraland",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.decentraland,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
];

List allproviders = [

  {
    'id': 1,
    'name': "Binance Connect",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.binance,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 2,
    'name': "Google",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.google,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 3,
    'name': "Apple Pay",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.apple,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 4,
    'name': "MoonPay",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.golgol,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 5,
    'name': "Ramp",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.ramp,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 6,
    'name': "Transak",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.transak,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
  {
    'id': 7,
    'name': "Paypal",
    'amount': 2000.0,
    'dollar': 200.0,
    'coin': 123.7,
    'cper': 175.0,
    'image': CustomImageView(
      imagePath: ImageConstant.paypal,
      height: getSize(48),
      width: getSize(48),
    ),
    'color': isDark ? ColorConstant.white : ColorConstant.gray800
  },
];

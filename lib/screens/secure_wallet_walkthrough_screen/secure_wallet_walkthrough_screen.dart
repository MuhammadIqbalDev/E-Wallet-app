
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../secure_wallet_walkthrough_two_screen/secure_wallet_walkthrough_two_screen.dart';
import '../what_is_seed_phrase_bottomsheet/what_is_seed_phrase_bottomsheet.dart';

class DarkSecureWalletWalkthroughScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                centerTitle: true,
                
                title: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(200),
                    imagePath: ImageConstant.imgGroupGray80016x200)
                    
                    
                    ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: isDark
                              ? ColorConstant.gray800
                              : ColorConstant.gray300),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage340x340,
                          height: getSize(340),
                          width: getSize(340),
                          margin: getMargin(top: 23)),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("Secure Your Wallet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRomanBold18Orange400b)),
                      Container(
                          width: getHorizontalSize(374),
                          margin: getMargin(left: 2, top: 17, right: 2),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Don't risk losing your funds. Protect your wallet by saving your ",
                                    style: TextStyle(
                                        color: isDark
                                            ? ColorConstant.whiteA700
                                            : ColorConstant.gray800,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: getHorizontalSize(0.2))),
                                TextSpan(
                                    text: "Seed phrase in a place\nyou trust. ",
                                    style: TextStyle(
                                        color: ColorConstant.orange400,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: getHorizontalSize(0.2)))
                              ]),
                              textAlign: TextAlign.center)),
                      Container(
                          width: getHorizontalSize(380),
                          margin: getMargin(top: 13, bottom: 5),
                          child: Text(
                              "It's the only way to recover your wallet if you get locked out of the app or get a new device.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2))))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
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
                                    DarkSecureWalletWalkthroughTwoScreen()),
                          );
                        },
                        child: CustomButton(
                            text: "Start",
                            variant: ButtonVariant.OutlineOrangeA2003f,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              // barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return DarkWhatIsSeedPhraseBottomsheet();
                              });
                        },
                        child: CustomButton(
                            height: 50,
                            text: "Remind Me Later",
                            margin: getMargin(top: 24),
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle:
                                ButtonFontStyle.UrbanistRomanBold18Orange400,
                            variant: ButtonVariant.FillAmber50014),
                      )
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

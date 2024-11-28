import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../secure_wallet_walkthrough_three_screen/secure_wallet_walkthrough_three_screen.dart';

class DarkSecureWalletWalkthroughTwoScreen extends StatelessWidget {
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
                    imagePath: ImageConstant.imgGroupGray80016x200)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: isDark ? ColorConstant.gray800 :   ColorConstant.gray300 ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 21),
                              child: Text("Secure Your Wallet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18Orange400b))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 19),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Secure your wallet's ",
                                        style: TextStyle(
                                            color:isDark ? ColorConstant.whiteA700 : ColorConstant.gray900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                    TextSpan(
                                        text: "\"Seed Phrase\"",
                                        style: TextStyle(
                                            color: ColorConstant.orange400,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.2)))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: isDark ? ColorConstant.gray800 :   ColorConstant.gray300 )),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("Manual",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      Container(
                          width: getHorizontalSize(353),
                          margin: getMargin(top: 25, right: 26),
                          child: Text(
                              "Write down your seed phrase on a piece of paper and store in a safe place.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("Security level: Very strong",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                     Container(
                      padding: EdgeInsets.only(top: 15,),
                      child: Row(
                        children: [
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorConstant.orange400,),height: 5,width: 60,),
                          SizedBox(width: 10,),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorConstant.orange400,),height: 5,width: 60,),
                          SizedBox(width: 10,),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorConstant.orange400,),height: 5,width: 60,),

                          
                        ],
                      ),
                     ),
                      Container(
                          width: getHorizontalSize(250),
                          margin: getMargin(top: 25),
                          child: Text(
                              "Risks are: \n \u2022 You lose it\n \u2022 You forget where you put it\n \u2022 Someone else finds it",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text(
                              "Other options: Doesn't have to be paper!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Container(
                          width: getHorizontalSize(274),
                          margin: getMargin(top: 25, right: 105, bottom: 5),
                          child: Text(
                              "Tips:\n \u2022 Store in bank vault\n \u2022 Store in a safe\n \u2022 Store in multiple secret places",
                              maxLines: null,
                              textAlign: TextAlign.left,
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
                         onTap: (){
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkSecureWalletWalkthroughThreeScreen()),
      );
                        },
                        child: CustomButton(
                            text: "Start",
                            variant: ButtonVariant.OutlineOrangeA2003f,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
                      )
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}

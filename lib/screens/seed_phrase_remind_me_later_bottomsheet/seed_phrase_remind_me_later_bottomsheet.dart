import 'package:eternalwallet/screens/secure_wallet_walkthrough_two_screen/secure_wallet_walkthrough_two_screen.dart';
import 'package:eternalwallet/screens/wallet_tokens_full_page/wallet_tokens_full_page.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_checkbox.dart';
import '../../widgets/custom_image_view.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';

// ignore_for_file: must_be_immutable
class DarkSeedPhraseRemindMeLaterBottomsheet extends StatefulWidget {
  @override
  State<DarkSeedPhraseRemindMeLaterBottomsheet> createState() =>
      _DarkSeedPhraseRemindMeLaterBottomsheetState();
}

class _DarkSeedPhraseRemindMeLaterBottomsheetState
    extends State<DarkSeedPhraseRemindMeLaterBottomsheet> {
  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 24,
          top: 8,
          right: 24,
          bottom: 8,
        ),
        decoration: AppDecoration.outlineGray8002.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgFrame,
              height: getVerticalSize(
                3,
              ),
              width: getHorizontalSize(
                38,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 26,
              ),
              child: Text(
                "Skip Account Security?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold24,
              ),
            ),
            Padding(
              padding: getPadding(top: 21, bottom: 21),
              child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color:
                      isDark ? ColorConstant.gray800 : ColorConstant.gray300),
            ),
            SizedBox(
              child: CustomCheckbox(
                text: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'I understand that if i lose mt seed phrase i will not be able to access my wallet.',
                      style: TextStyle(
                          color: isDark
                              ? ColorConstant.white
                              : ColorConstant.gray900,
                          fontFamily: 'Urbanist'),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    )),
                value: isCheckbox,
                margin: getMargin(
                  top: 23,
                  right: 27,
                ),
                fontStyle: CheckboxFontStyle.UrbanistSemiBold16,
                onChange: (value) {
                  setState(() {
                    isCheckbox = value;
                  });
                },
              ),
            ),
            Padding(
              padding: getPadding(
                top: 21,
              ),
              child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color:
                      isDark ? ColorConstant.gray800 : ColorConstant.gray300),
            ),
            Padding(
              padding: getPadding(
                top: 23,
                bottom: 28,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DarkSecureWalletWalkthroughTwoScreen();
                      })),
                      height: getVerticalSize(
                        35,
                      ),
                      text: "No, Secure",
                      margin: getMargin(
                        right: 6,
                      ),
                      fontStyle: ButtonFontStyle.UrbanistRomanBold18Orange400,
                      variant: ButtonVariant.FillAmber50014,
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DarkWalletTokensFullPage();
                      })),
                      variant: ButtonVariant.FillOrange400,
                      text: "Yes, Skip",
                      margin: getMargin(
                        left: 6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

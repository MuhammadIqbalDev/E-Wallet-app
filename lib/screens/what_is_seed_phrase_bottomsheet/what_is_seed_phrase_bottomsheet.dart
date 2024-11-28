import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../buy_ethereum_add_credit_or_debit_card_screen/buy_ethereum_add_credit_or_debit_card_screen.dart';
import '../seed_phrase_remind_me_later_bottomsheet/seed_phrase_remind_me_later_bottomsheet.dart';


// ignore_for_file: must_be_immutable
class DarkWhatIsSeedPhraseBottomsheet extends StatefulWidget {
  @override
  State<DarkWhatIsSeedPhraseBottomsheet> createState() => _DarkWhatIsSeedPhraseBottomsheetState();
}

class _DarkWhatIsSeedPhraseBottomsheetState extends State<DarkWhatIsSeedPhraseBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: getPadding(all: 10),
       decoration: AppDecoration.outlineGray8002.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL48,
          ),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: getPadding(
                top: 26,
              ),
              child: Text(
                "What is a “Seed phrase”?",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanBold24,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 21,
                bottom: 21
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color:isDark ? ColorConstant.gray800 : ColorConstant.gray300 ,
              ),
            ),

            Container(
              // width: getHorizontalSize(
              //   376,
              // ),
              // margin: getMargin(
              //   top: 23,
              // ),
              child: Text(
                "A seed phrase is a set of twelve words that contains all the information about your wallet, including your funds. It's like a secret code used to access your entire wallet.\n\nYou must keep your seed phrase secret and safe. If someone gets your seed phrase, they'll gain control over your accounts.\n\nSave it in a place where only you can access it. If you lose it, not even EternalWallet can help you recover it.",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRomanMedium16.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 24,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color:isDark ? ColorConstant.gray800 : ColorConstant.gray300 
              ),
            ),
            CustomButton(
              height: 45,
              variant: ButtonVariant.FillOrange400,
              onTap: ()async{
                Navigator.of(context).pop();
                  await showModalBottomSheet(context: context,
                  backgroundColor: Colors.transparent,
                  // barrierColor: Colors.transparent,
                   builder: (context){
                    return DarkSeedPhraseRemindMeLaterBottomsheet();
                  });
              },
              text: "OK, I Got It",
              margin: getMargin(
                top: 23,
                bottom: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

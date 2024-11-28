
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../create_password_blank_form_screen/create_password_blank_form_screen.dart';
import '../import_seed_phrase_blank_form_screen/import_seed_phrase_blank_form_screen.dart';

class DarkWalletSetupOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 26, right: 24, bottom: 26),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GotoBack(context),
                        ],
                      ),
                      CustomImageView(
                          imagePath: ImageConstant.wallet,
                          height: getSize(350),
                          width: getSize(350),
                          margin: getMargin(top: 34)),
                      Padding(
                          padding: getPadding(top: 64),
                          child: Text("Wallet Setup",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold48)),
                      Container(
                          width: getHorizontalSize(364),
                          margin:
                              getMargin(left: 7, top: 17, right: 8, bottom: 5),
                          child: Text(
                              "Create your new Wallet or import using a seed phrase if you already have an account.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2))))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell
                      (
                                                     splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
                         onTap: (){
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkCreatePasswordBlankFormScreen()),
        
      );
                        },
                        child: CustomButton(
                            text: "Create a New Wallet",
                            variant: ButtonVariant.OutlineOrangeA2003f,
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18b),
                      ),
                      InkWell(
                 splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
                        onTap: (){
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkImportSeedPhraseBlankFormScreen()),
        
      );
                        },
                        child: CustomButton(
                          variant: ButtonVariant.FillAmber50014,
                            height: getVerticalSize(58),
                            text: "Import Using Seed Phrase",
                            margin: getMargin(top: 24),
                            shape: ButtonShape.CircleBorder29,
                            padding: ButtonPadding.PaddingT18,
                            fontStyle: ButtonFontStyle.UrbanistRomanBold18Orange400),
                      )
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

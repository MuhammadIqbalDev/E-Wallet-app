import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../face_scan_screen/face_scan_screen.dart';


class DarkFingerprintScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Fingerprint Scan", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 49, top: 139, right: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(328),
                          child: Text(
                              "Please put your finger on the fingerprint scanner to get started.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      CustomImageView(
                          imagePath: ImageConstant.imgVector243x234,
                          height: getVerticalSize(243),
                          width: getHorizontalSize(234),
                          fit: BoxFit.fill,
                          margin: getMargin(top: 86, bottom: 5))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 24, bottom: 36),
                // decoration: AppDecoration.outlineGray800,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: (){
                        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkFaceScanScreen()),
      );
                      },
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkFaceScanScreen()),
      );
                        },
                        child: CustomButton(
                          variant: ButtonVariant.FillOrange400,
                          fontStyle: ButtonFontStyle.UrbanistRomanBold18,
                          text: "Continue")))]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

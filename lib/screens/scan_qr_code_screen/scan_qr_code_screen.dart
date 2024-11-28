// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../send_ethereum_filled_form_screen/send_ethereum_filled_form_screen.dart';

class DarkScanQrCodeScreen extends StatelessWidget {
  final bool getpop;
  const DarkScanQrCodeScreen({
    
   this.getpop =false,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup200),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 26, right: 24, bottom: 26),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(28),
                              width: getSize(28),
                              alignment: Alignment.centerLeft,
                              onTap: () {
                                onTapImgArrowleft(context);
                              }),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Text("Scan QR Code",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold32)),
                          Padding(
                              padding: getPadding(top: 22, bottom: 5),
                              child: Text(
                                  "Please point the camera at the QR Code",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanMedium18
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 88, right: 88, bottom: 36),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      onTap: () {
                        getpop ? Navigator.of(context).pop() : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DarkSendEthereumFilledFormScreen()),
                          // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                        );
                      },
                      height: 56,
                      width: 56,
                      margin: getMargin(top: 22, bottom: 22),
                      variant: IconButtonVariant.FillAmber50014,
                      child: CustomImageView(imagePath: ImageConstant.pic)),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder50),
                      child: Container(
                          height: getSize(100),
                          width: getSize(100),
                          padding: getPadding(all: 28),
                          decoration: AppDecoration
                              .gradientOrangeA200Orange40001
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder50),
                          child: Stack(children: [
                            CustomImageView(
                                onTap: () {
                                  getpop ? Navigator.of(context).pop() : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DarkSendEthereumFilledFormScreen()),
                                    // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                                  );
                                },
                                svgPath: ImageConstant.imgQrcode,
                                height: getSize(44),
                                width: getSize(44),
                                alignment: Alignment.center)
                          ]))),
                  CustomIconButton(
                      onTap: () {
                       getpop ? Navigator.of(context).pop() : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DarkSendEthereumFilledFormScreen()),
                          // MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
                        );
                      },
                      height: 56,
                      width: 56,
                      margin: getMargin(left: 20, top: 22, bottom: 22),
                      variant: IconButtonVariant.FillAmber50014,
                      child: CustomImageView(
                          imagePath: "assets/images/folder.png"))
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

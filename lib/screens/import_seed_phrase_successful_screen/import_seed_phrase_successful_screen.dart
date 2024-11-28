import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';


class DarkImportSeedPhraseSuccessfulScreen extends StatefulWidget {
  @override
  State<DarkImportSeedPhraseSuccessfulScreen> createState() => _DarkImportSeedPhraseSuccessfulScreenState();
}

class _DarkImportSeedPhraseSuccessfulScreenState extends State<DarkImportSeedPhraseSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
    backgroundColor: Colors.transparent,
      child:  Container(
        color: Colors.transparent,
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(
                                                bottom: 45),
                                            padding: getPadding(
                                                left: 77,
                                                top: 32,
                                                right: 77,
                                                bottom: 32),
                                            decoration: AppDecoration
                                                .fillWhiteDialog
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder48),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize
                                                        .min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(
                                                              top:
                                                                  8),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          children: [
                                                            Expanded(
                                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                              Padding(
                                                                  padding: getPadding(left: 10),
                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                    Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(10)))),
                                                                    Container(height: getSize(5), width: getSize(5), margin: getMargin(left: 74, top: 2, bottom: 13), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(2))))
                                                                  ])),
                                                              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                Container(height: getSize(2), width: getSize(2), margin: getMargin(top: 54, bottom: 87), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(1)))),
                                                                Container(height: getSize(10), width: getSize(10), margin: getMargin(left: 3, top: 108, bottom: 25), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(5)))),
                                                                Container(
                                                                    height: getSize(143),
                                                                    width: getSize(143),
                                                                    margin: getMargin(left: 9),
                                                                    child: Stack(alignment: Alignment.bottomRight, children: [
                                                                      Align(
                                                                          alignment: Alignment.center,
                                                                          child: Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              elevation: 0,
                                                                              margin: EdgeInsets.all(0),
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder70),
                                                                              child: Container(
                                                                                  height: getSize(141),
                                                                                  width: getSize(141),
                                                                                  padding: getPadding(all: 45),
                                                                                  decoration: AppDecoration.gradientOrangeA200Orange40001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder70),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgCheckmarkWhiteA700, height: getSize(49), width: getSize(49), alignment: Alignment.center)
                                                                                  ])))),
                                                                      Align(alignment: Alignment.bottomRight, child: Container(height: getSize(5), width: getSize(5), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(2)))))
                                                                    ]))
                                                              ]),
                                                              Align(
                                                                  alignment: Alignment.centerRight,
                                                                  child: Container(height: getSize(2), width: getSize(2), margin: getMargin(top: 7, right: 45), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(1))))),
                                                              Container(
                                                                  height: getSize(7),
                                                                  width: getSize(7),
                                                                  margin: getMargin(left: 59, top: 1),
                                                                  decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(3))))
                                                            ])),
                                                            Padding(
                                                                padding: getPadding(top: 20, bottom: 67),
                                                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                  Align(alignment: Alignment.centerRight, child: Container(height: getSize(15), width: getSize(15), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(7))))),
                                                                  Container(height: getSize(5), width: getSize(5), margin: getMargin(top: 73), decoration: BoxDecoration(color: ColorConstant.yellow400, borderRadius: BorderRadius.circular(getHorizontalSize(2))))
                                                                ]))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(
                                                              top:
                                                                  31),
                                                      child: Text(
                                                          "Successful!",
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign
                                                                  .left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold24Orange400)),
                                                  Container(
                                                      width:
                                                          getHorizontalSize(
                                                              163),
                                                      margin: getMargin(
                                                          left:
                                                              11,
                                                          top: 18,
                                                          right:
                                                              11),
                                                      child: Text(
                                                          "Preparing...\nPlease wait a moment.",
                                                          maxLines:
                                                              null,
                                                          textAlign:
                                                              TextAlign
                                                                  .center,
                                                          style: AppStyle
                                                              .txtUrbanistRegular16
                                                              .copyWith(letterSpacing: getHorizontalSize(0.2)))),
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgVector60x60,
                                                      height:
                                                          getSize(
                                                              60),
                                                      width:
                                                          getSize(
                                                              60),
                                                      margin: getMargin(
                                                          top:
                                                              32))
                                                ])))
                                  
    );
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  //   @override
  // void didChangeDependencies() {
  //     Future.delayed(Duration(seconds: 5), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => DarkWalletTokensFullPage()),
  //     );
  //   });
  //   super.didChangeDependencies();
  // }

}

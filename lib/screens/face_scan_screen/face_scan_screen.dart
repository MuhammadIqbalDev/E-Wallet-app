import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../import_seed_phrase_successful_screen/import_seed_phrase_successful_screen.dart';


class DarkFaceScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.img9darkfacescan),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 26, right: 24, bottom: 26),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(820),
                              width: getHorizontalSize(380),
                              margin: getMargin(bottom: 10),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 103,
                                                right: 104,
                                                bottom: 103),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("100%",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold48),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Text(
                                                          "Verifying your face...",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistSemiBold18
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.2))))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.facescan,
                                        height: getSize(380),
                                        width: getSize(380),
                                        alignment: Alignment.topCenter,
                                        margin: getMargin(top: 198)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  onTap: () {
                                                    onTapImgArrowleft(context);
                                                  }),
                                              Spacer(),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                highlightColor: Colors.transparent,
                                                onTap: ()async{

                                                  await showDialog(context: context, builder: (context){
                                                    return DarkImportSeedPhraseSuccessfulScreen();
                                                  });

                                                },
                                                child: CustomButton(
                                                  variant: ButtonVariant.FillOrange400,
                                                fontStyle: ButtonFontStyle.UrbanistRomanBold18,
                                                  text: "Continue"))
                                            ]))
                                  ]))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}


import 'package:eternalwallet/screens/defi_tokens_screen/widgets/listchainthetaf_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';

class DarkDefiTokensScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 13),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarTitle(
                    text: "DeFi Tokens", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgIconlylightoutlinesearch,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 9, right: 24, bottom: 9),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 11),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 16.0, bottom: 16.0),
                                    child: SizedBox(
                                        width: getHorizontalSize(380),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray800)));
                              },
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return ListchainthetafItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray800))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}

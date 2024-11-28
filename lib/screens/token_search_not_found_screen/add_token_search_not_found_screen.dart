import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_searchview_2.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DarkAddTokenSearchNotFoundScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
   
            appBar: CustomAppBar(
                height: getVerticalSize(72),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 14),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarSearchview2(
                    hintText: "Abcdefghijk", controller: searchController),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgPlus,
                      margin:
                          getMargin(left: 16, top: 14, right: 24, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 42, top: 144, right: 42),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage,
                          height: getSize(300),
                          width: getSize(300)),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("Not Found",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24)),
                      Container(
                          width: getHorizontalSize(342),
                          margin: getMargin(top: 13, bottom: 5),
                          child: Text(
                              "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRegular18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2))))
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

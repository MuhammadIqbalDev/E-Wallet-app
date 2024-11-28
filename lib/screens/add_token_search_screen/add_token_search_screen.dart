import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_image.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DarkAddTokenSearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 14),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: CustomSearchView(
                    width: getHorizontalSize(292),
                    focusNode: FocusNode(),
                    autofocus: true,
                    controller: searchController,
                    hintText: "",
                    variant: SearchViewVariant.OutlineOrange400,
                    fontStyle: SearchViewFontStyle.UrbanistSemiBold16,
                    prefix: Container(
                        margin:
                            getMargin(left: 20, top: 18, right: 12, bottom: 18),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchOrange400)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(56)),
                    suffix: Padding(
                        padding: EdgeInsets.only(right: getHorizontalSize(15)),
                        child: IconButton(
                            onPressed: () {
                              searchController.clear();
                            },
                            icon: Icon(Icons.clear,
                                color: Colors.grey.shade600)))),
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
                padding: getPadding(top: 16, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgVector60x60,
                          height: getSize(60),
                          width: getSize(60),
                          margin: getMargin(bottom: 510))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}

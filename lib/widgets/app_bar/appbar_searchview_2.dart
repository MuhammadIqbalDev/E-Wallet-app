import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview2 extends StatelessWidget {
  AppbarSearchview2({
    this.hintText,
    this.controller,
    this.margin,
  });

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(
          292,
        ),
        focusNode: FocusNode(),
        autofocus: true,
        controller: controller,
        hintText: hintText,
        fontStyle: SearchViewFontStyle.UrbanistSemiBold16,
        prefix: Container(
          margin: getMargin(
            left: 20,
            top: 18,
            right: 12,
            bottom: 18,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            56,
          ),
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              15,
            ),
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}

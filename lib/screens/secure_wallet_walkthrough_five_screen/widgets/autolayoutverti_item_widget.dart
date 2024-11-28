// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: must_be_immutable
import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/cupertino.dart';


class AutolayoutvertiItemWidget extends StatefulWidget {
  final String item1;
  final String item2;
  final String item3;

  AutolayoutvertiItemWidget(
    this.item1,
    this.item2,
    this.item3,
  ) : super();

  @override
  State<AutolayoutvertiItemWidget> createState() => _AutolayoutvertiItemWidgetState();
}

class _AutolayoutvertiItemWidgetState extends State<AutolayoutvertiItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4,bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: getHorizontalSize(
              103,
            ),
            padding: getPadding(
              left: 0,
              top: 11,
              right: 0,
              bottom: 11,
            ),
            decoration: AppDecoration.txtFillGray800.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder22,
            ),
            child: Text(
              widget.item1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRomanBold16
            ),
          ),
          Container(
            width: getHorizontalSize(
              103,
            ),
            padding: getPadding(
              left: 0,
              top: 11,
              right: 0,
              bottom: 11,
            ),
            decoration: AppDecoration.txtFillGray800.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder22,
            ),
            child: Text(
              widget.item2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRomanBold16,
            ),
          ),
          Container(
            width: getHorizontalSize(
              102,
            ),
            padding: getPadding(
              left: 0,
              top: 11,
              right: 0,
              bottom: 11,
            ),
            decoration: AppDecoration.txtFillGray800.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder22,
            ),
            child: Text(
              widget.item3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRomanBold16,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListspeedItemWidget extends StatefulWidget {
  final String category;
  final double amount;
  final double dollar;
  final bool selected;
  ListspeedItemWidget(
    this.category,
    this.amount,
    this.dollar,
    this.selected,
  ) : super();

  @override
  State<ListspeedItemWidget> createState() => _ListspeedItemWidgetState();
}

class _ListspeedItemWidgetState extends State<ListspeedItemWidget> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            2,
          ),
          top: getVerticalSize(
            2,
          ),
          right: getHorizontalSize(
            2,
          ),
          bottom: getVerticalSize(
            2,
          ),
        ),
        strokeWidth: getHorizontalSize(
          2,
        ),
        gradient: LinearGradient(
          begin: Alignment(
            1,
            1,
          ),
          end: Alignment(
            0,
            0,
          ),
          colors: [
            widget.selected
                ? ColorConstant.orangeA200
                : ColorConstant.gray600,
          widget.selected
                ? ColorConstant.orange40001
                : ColorConstant.gray600,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(
            20,
          ),
          topRight: Radius.circular(
            20,
          ),
          bottomLeft: Radius.circular(
            20,
          ),
          bottomRight: Radius.circular(
            20,
          ),
        ),
        child: Padding(
          padding: getPadding(
            left: 24,
            top: 15,
            right: 24,
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 26,
                ),
                child: Text(
                  widget.category,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  bottom: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.amount} ETH",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "\$ ${widget.dollar}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanMedium14.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

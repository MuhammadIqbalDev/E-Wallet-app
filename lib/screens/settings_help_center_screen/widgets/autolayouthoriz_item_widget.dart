// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/theme_switch_bloc.dart';

// ignore: must_be_immutable
class AutolayouthorizItemWidget extends StatefulWidget {
  final String title;
  final bool selected;
  AutolayouthorizItemWidget({
    required this.title,
    required this.selected,
  }) : super();

  @override
  State<AutolayouthorizItemWidget> createState() =>
      _AutolayouthorizItemWidgetState();
}

class _AutolayouthorizItemWidgetState extends State<AutolayouthorizItemWidget> {
  @override
  void initState() {
  
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark=state.isDarkTheme;
        return IntrinsicWidth(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              // width: getHorizontalSize(
              //   99,
              // ),
              margin: getMargin(
                right: 12,
              ),
              padding: getPadding(
                left: 20,
                top: 8,
                right: 20,
                bottom: 8,
              ),
              decoration: !widget.selected
                  ? AppDecoration.txtFillGray900.copyWith(
                   
                      border: Border.all(color: ColorConstant.orange400),
                      borderRadius: BorderRadiusStyle.txtCircleBorder16,
                    )
                  : AppDecoration.txtOutlineOrange400.copyWith(
                      color: ColorConstant.orange400,
                      border: Border.all(color: ColorConstant.orange400),
                      borderRadius: BorderRadiusStyle.txtCircleBorder16,
                    ),
              child: Text(
                widget.title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
                  color: isDark ? 
                  (widget.selected ?  ColorConstant.whiteA700 : ColorConstant.white ): 
                  (widget.selected ? ColorConstant.whiteA700 : ColorConstant.gray900) ,
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

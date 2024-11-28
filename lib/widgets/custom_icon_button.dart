// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_switch_bloc.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomIcon extends StatelessWidget {
  final double? size;
  final IconData icon;
  final bool? isCircle;
  final Color? color;
  final bool isCenter;
  CustomIcon({
   this.isCenter=true,
    required this.size,
    required this.icon,
    this.isCircle,
    this.color,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return isCenter ?  Center(
          child: isCircle != null
              ? !isCircle!
                  ? Icon(icon,
                      size: size ?? 25,
                      color: color ??
                          (state.isDarkTheme
                              ? ColorConstant.white
                              : ColorConstant.gray900))
                  : Container(
                      height: size! + 5,
                      width: size! + 5,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: color ??
                                (state.isDarkTheme
                                    ? ColorConstant.white
                                    : ColorConstant.gray900),
                          )),
                      child: Icon(icon,
                          size: size ?? 25,
                          color: color ??
                              (state.isDarkTheme
                                  ? ColorConstant.white
                                  : ColorConstant.gray900)),
                    )
              : Icon(icon,
                  size: size ?? 25,
                  color: color ??
                      (state.isDarkTheme
                          ? ColorConstant.white
                          : ColorConstant.gray900)),
        ) : 
        isCircle != null
              ? !isCircle!
                  ? Icon(icon,
                      size: size ?? 25,
                      color: color ??
                          (state.isDarkTheme
                              ? ColorConstant.white
                              : ColorConstant.gray900))
                  : Container(
                      height: size! + 5,
                      width: size! + 5,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: color ??
                                (state.isDarkTheme
                                    ? ColorConstant.white
                                    : ColorConstant.gray900),
                          )),
                      child: Icon(icon,
                          size: size ?? 25,
                          color: color ??
                              (state.isDarkTheme
                                  ? ColorConstant.white
                                  : ColorConstant.gray900)),
                    )
              : Icon(icon,
                  size: size ?? 25,
                  color: color ??
                      (state.isDarkTheme
                          ? ColorConstant.white
                          : ColorConstant.gray900))
        ;
      },
    );
  }
}

Widget GotoBack(context) => InkWell(
    onTap: () => Navigator.of(context).pop(),
    child: CustomIcon(
      icon: Icons.arrow_back,
      size: 30,
    ));

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillOrange400:
        return Colors.transparent;
      case IconButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case IconButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case IconButtonVariant.FillAmber50014:
        return ColorConstant.amber50014;
      case IconButtonVariant.FillOrange50014:
        return ColorConstant.orange50014;
      case IconButtonVariant.FillIndigoA40014:
        return ColorConstant.indigoA40014;
      case IconButtonVariant.FillRedA20014:
        return ColorConstant.redA20014;
      case IconButtonVariant.FillPurple50014:
        return ColorConstant.purple50014;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            50.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder7,
  CircleBorder30,
  CircleBorder24,
}

enum IconButtonPadding {
  PaddingAll4,
  PaddingAll12,
}

enum IconButtonVariant {
  FillOrange400,
  FillWhiteA700,
  FillGray800,
  FillGray90001,
  FillAmber50014,
  FillOrange50014,
  FillIndigoA40014,
  FillRedA20014,
  FillPurple50014,
}

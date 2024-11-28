import 'package:eternalwallet/bloc/theme_switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomSearchView extends StatefulWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.onchange
      });

  Function(String)? onchange;

  SearchViewShape? shape;

  SearchViewPadding? padding;

  SearchViewVariant? variant;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  @override
  State<CustomSearchView> createState() => _CustomSearchViewState();
}

class _CustomSearchViewState extends State<CustomSearchView> {
  bool localisDark = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: ((context, state) {
      localisDark = state.isDarkTheme;
      return widget.alignment != null
          ? Align(
              alignment: widget.alignment ?? Alignment.center,
              child: _buildSearchViewWidget(),
            )
          : _buildSearchViewWidget();
    }));
  }

  _buildSearchViewWidget() {
    return Container(
      width: widget.width ?? double.maxFinite,
      margin: widget.margin,
      decoration: BoxDecoration(
          color: localisDark ? ColorConstant.gray900 : ColorConstant.gray50),
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        autofocus: widget.autofocus!,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        onChanged: widget.onchange ?? (value){},
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: widget.hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: Container(
        width: 50,
        child: widget.prefix,
      ),
      prefixIconConstraints: widget.prefixConstraints,
      suffixIcon: widget.suffix,
      suffixIconConstraints: widget.suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      case SearchViewFontStyle.UrbanistSemiBold16:
        return TextStyle(
          color: localisDark ? ColorConstant.whiteA700 : ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (widget.variant) {
      case SearchViewVariant.OutlineOrange400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.orange400,
            width: 1,
          ),
        );
      case SearchViewVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (widget.variant) {
      case SearchViewVariant.OutlineOrange400:
        return ColorConstant.amber50014;
      default:
        return localisDark ? ColorConstant.gray90001 : ColorConstant.gray300;
    }
  }

  _setFilled() {
    switch (widget.variant) {
      case SearchViewVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (widget.padding) {
      case SearchViewPadding.PaddingT18_1:
        return getPadding(
          top: 18,
          bottom: 18,
        );
      default:
        return getPadding(
          top: 18,
          right: 18,
          bottom: 18,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder16,
}

enum SearchViewPadding {
  PaddingT18,
  PaddingT18_1,
}

enum SearchViewVariant {
  None,
  FillGray90001,
  OutlineOrange400,
}

enum SearchViewFontStyle {
  UrbanistRegular16,
  UrbanistSemiBold16,
}
enum functions{
  onchange
}
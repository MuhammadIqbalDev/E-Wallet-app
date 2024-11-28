
import 'package:flutter/material.dart';


Update(BuildContext context){
  size=MediaQuery.of(context).size;
  var statusBarHeight = MediaQuery.of(context).padding.top;
  var bottomBarHeight = MediaQuery.of(context).padding.bottom;
  var screenHeight = size.height - statusBarHeight - bottomBarHeight;
  height=screenHeight;
}
Size size=Size(0,0);
 double height=0.0;
const num GLOBAL_WIDTH = 428;
const num GLOBAL_HEIGHT = 926;
const num GLOBAL_STATUS_BAR = 44;

get width {
  return size.width;
}
double getHorizontalSize(double px) {
  return ((px * width) / GLOBAL_WIDTH);
}
double getVerticalSize(double px) {
  return ((px * height) / (GLOBAL_HEIGHT - GLOBAL_STATUS_BAR));
}
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

double getFontSize(double px) {
  return getSize(px);
}

EdgeInsetsGeometry getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

EdgeInsetsGeometry getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

EdgeInsetsGeometry getMarginOrPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(
      left ?? 0,
    ),
    top: getVerticalSize(
      top ?? 0,
    ),
    right: getHorizontalSize(
      right ?? 0,
    ),
    bottom: getVerticalSize(
      bottom ?? 0,
    ),
  );
}

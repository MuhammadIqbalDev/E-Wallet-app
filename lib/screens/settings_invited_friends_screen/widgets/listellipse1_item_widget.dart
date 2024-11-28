// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/theme_switch_bloc.dart';

// ignore: must_be_immutable
class Listellipse1ItemWidget extends StatefulWidget {
  final String name;
  final String number;
  final bool invited;
  Listellipse1ItemWidget({
    required this.name,
    required this.number,
    required this.invited,
  }) : super();

  @override
  State<Listellipse1ItemWidget> createState() => _Listellipse1ItemWidgetState();
}

class _Listellipse1ItemWidgetState extends State<Listellipse1ItemWidget> {
  bool invited = false;
  @override
  void initState() {
    invited = widget.invited;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse11,
                height: getSize(
                  60,
                ),
                width: getSize(
                  60,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    30,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 5,
                  bottom: 6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold18
                          .copyWith(
                            color:state.isDarkTheme ? ColorConstant.white : ColorConstant.gray900,
                            fontSize: 17),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Text(
                        widget.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanMedium16.copyWith(
                          color: state.isDarkTheme ? ColorConstant.white : ColorConstant.gray900,
                          fontSize: 15,
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  log(invited.toString());
                  setState(() {
                    invited = !invited;
                  });
                  log(invited.toString());
                },
                child: Container(
                  width: getHorizontalSize(
                    100,
                  ),
                  margin: getMargin(
                    right: 12,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 8,
                    right: 20,
                    bottom: 8,
                  ),
                  decoration: !invited
                      ? AppDecoration.fillYellow70033.copyWith(
                          color: ColorConstant.orange400,
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        )
                      : AppDecoration.txtOutlineOrange400.copyWith(
                          border: Border.all(color: ColorConstant.orange400),
                          borderRadius: BorderRadiusStyle.txtCircleBorder16,
                        ),
                  child: Text(
                    invited ? "invited" : "invite",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
                      color : state.isDarkTheme ? ColorConstant.white : invited ? ColorConstant.orange400 : Colors.white,
                      letterSpacing: getHorizontalSize(
                        
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

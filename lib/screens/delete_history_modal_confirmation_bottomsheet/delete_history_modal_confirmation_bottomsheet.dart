import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../history_screen/history_screen.dart';

// ignore_for_file: must_be_immutable
class DarkDeleteHistoryModalConfirmationBottomsheet extends StatefulWidget {
  @override
  State<DarkDeleteHistoryModalConfirmationBottomsheet> createState() =>
      _DarkDeleteHistoryModalConfirmationBottomsheetState();
}

class _DarkDeleteHistoryModalConfirmationBottomsheetState
    extends State<DarkDeleteHistoryModalConfirmationBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Container(
          decoration: AppDecoration.outlineGray8002.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL48,
          ),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              child: Container(
                width: double.maxFinite,
                padding: getPadding(
                  left: 24,
                  top: 8,
                  right: 24,
                  bottom: 8,
                ),
                decoration: AppDecoration.fillGray900.copyWith(
                    // color: Colors.transparent,
                    borderRadius: BorderRadiusStyle.customBorderTL44),
                // decoration: AppDecoration.outlineGray800.copyWith(
                //   borderRadius: BorderRadiusStyle.customBorderTL44,
                // ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFrame,
                      height: getVerticalSize(
                        3,
                      ),
                      width: getHorizontalSize(
                        38,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 26,
                      ),
                      child: Text(
                        "Clear Browsing Data?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistRomanBold24,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: isDark
                            ? ColorConstant.gray800
                            : ColorConstant.gray300,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 23,
                        bottom: 28,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomButton(
                              variant: ButtonVariant.FillAmber50014,
                              fontStyle:
                                  ButtonFontStyle.UrbanistRomanBold18Orange400,
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              text: "Cancel",
                              margin: getMargin(
                                right: 6,
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              onTap: () {
                                setState(() {
                                  history.clear();
                                  Navigator.of(context).pop();
                                });
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(builder: (context) {
                                  return DarkHistoryScreen(title: "History");
                                }));
          
                              },
                              text: "Yes, Clear",
                              margin: getMargin(
                                left: 6,
                              ),
                              variant: ButtonVariant.OutlineOrangeA2003f,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

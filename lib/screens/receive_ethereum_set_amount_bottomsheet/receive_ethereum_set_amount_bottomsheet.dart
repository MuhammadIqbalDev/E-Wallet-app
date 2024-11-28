import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DarkReceiveEthereumSetAmountBottomsheet extends StatelessWidget {
  TextEditingController setamountoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: (context, state) {
          bool isDark=state.isDarkTheme;
          return Container(
              padding: MediaQuery.of(context).viewInsets,
              // width: double.maxFinite,
              child: Container(
                // width: double.maxFinite,
                padding: getPadding(
                  left: 24,
                  top: 8,
                  right: 24,
                  bottom: 8,
                ),
                decoration: AppDecoration.outlineGray8002.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL48,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
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
                          top: 24,
                        ),
                        child: Text(
                          "Set Amount",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300,
                        ),
                      ),
                      CustomTextFormField(
                       
                        controller: setamountoneController,
                        hintText: "0.55",
                        margin: getMargin(
                          top: 23,
                        ),
                        // variant: TextFormFieldVariant.,
                        padding: TextFormFieldPadding.PaddingT18_1,
                        fontStyle: TextFormFieldFontStyle.UrbanistRegular16,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: getMargin(
                            left: 20,
                            top: 18,
                            right: 12,
                            bottom: 18,
                          ),
                          child: CustomImageView(
                            svgPath: isDark ? ImageConstant.imgChainethereumeth : null,
                            imagePath:  !isDark ? ImageConstant.darkEth : null,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            56,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                           color: isDark ? ColorConstant.gray800 : ColorConstant.gray300,
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
                                onTap: ()=>  Navigator.of(context).pop(),
                                height: getVerticalSize(
                                  45,
                                ),
                                text: "Cancel",
                                margin: getMargin(
                                  right: 6,
                                ),
                               fontStyle: ButtonFontStyle.UrbanistRomanBold16,
                  variant: isDark
                      ? ButtonVariant.FillGray800
                      : ButtonVariant.FillAmber50014,
                              ),
                              
                            ),
                            Expanded(
                              child: CustomButton(
                                onTap: ()=>  Navigator.of(context).pop(),
                                text: "Confirm",
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
            );
        },
      ),
    );
  }
}

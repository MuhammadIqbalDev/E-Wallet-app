import 'package:eternalwallet/screens/receive_ethereum_share_qr_code_bottomsheet/widgets/gridwhatsapp_item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DarkReceiveEthereumShareQrCodeBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
        builder: (context, state) {
          bool isDark = state.isDarkTheme;
          return Container(
            width: double.maxFinite,
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 24,
                top: 8,
                right: 24,
                bottom: 8,
              ),
              decoration: AppDecoration.outlineGray8002.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL48,
              ),
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
                      top: 23,
                    ),
                    child: Text(
                      "Share",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold24,
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
                      color:isDark ? ColorConstant.gray800 : ColorConstant.gray300,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 23,
                      right: 20,
                      bottom: 27,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          84,
                        ),
                        crossAxisCount: 4,
                        mainAxisSpacing: getHorizontalSize(
                          33,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          33,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return index == 0
                            ? GridwhatsappItemWidget(
                                imagePath: ImageConstant.imgImage60x60,
                                tag: "Whatsapp",
                              )
                            : index == 1
                                ? GridwhatsappItemWidget(
                                    imagePath: "assets/images/twitter.png",
                                    tag: "Twitter",
                                  )
                                : index == 2
                                    ? GridwhatsappItemWidget(
                                        imagePath: "assets/images/facebook.jpeg",
                                        tag: "FaceBook")
                                    : index == 3
                                        ? GridwhatsappItemWidget(
                                            imagePath: "assets/images/instagram.png",
                                            tag: "Instagram")
                                        : index == 4
                                            ? GridwhatsappItemWidget(
                                                imagePath:
                                                    "assets/images/yahoo.png",
                                                tag: "Yahoo")
                                            : index == 5
                                                ? GridwhatsappItemWidget(
                                                    imagePath:
                                                        "assets/images/tiktok.png",
                                                    tag: "TikTok")
                                                : index == 6
                                                    ? GridwhatsappItemWidget(
                                                        imagePath: "assets/images/chat.png",
                                                        tag: "Message")
                                                    : GridwhatsappItemWidget(
                                                        imagePath: "assets/images/wechat.png",
                                                        tag: "WeChat");
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

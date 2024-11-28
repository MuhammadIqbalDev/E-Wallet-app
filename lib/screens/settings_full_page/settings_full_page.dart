
import 'package:eternalwallet/screens/settings_full_page/widgets/gridframe_item_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_circleimage.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import '../security_privacy_andvanced/advance_security.dart';
import '../security_privacy_andvanced/security_privacy.dart';
import '../settings_about_crista_screen/settings_about_crista_screen.dart';
import '../settings_contacts_screen/settings_contacts_screen.dart';
import '../settings_general_screen/settings_general_screen.dart';
import '../settings_help_center_screen/settings_help_center_screen.dart';
import '../settings_invited_friends_screen/settings_invited_friends_screen.dart';
import '../settings_notification_screen/settings_notification_screen.dart';
import '../settings_wallets_option_menu_screen/settings_wallets_option_menu_screen.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

// ignore_for_file: must_be_immutable
class DarkSettingsFullPage extends StatefulWidget {
  @override
  State<DarkSettingsFullPage> createState() => _DarkSettingsFullPageState();
}

class _DarkSettingsFullPageState extends State<DarkSettingsFullPage> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    ThemeSwitchBloc themeBloc = context.read<ThemeSwitchBloc>();
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return SafeArea(
          child: Scaffold(
        
            appBar: CustomAppBar(
              height: getVerticalSize(
                69,
              ),
              leadingWidth: 52,
              leading: AppbarCircleimage(
                svgPath: ImageConstant.imgTypelogodefault,
                margin: getMargin(
                  left: 24,
                  top: 12,
                  bottom: 15,
                ),
              ),
              title: AppbarTitle(
                text: "Settings",
                margin: getMargin(
                  left: 16,
                ),
              ),
            ),
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 18,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    right: 24,
                    bottom: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DarkSettingsWalletsOptionMenuScreen();
                          }));
                        },
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 56,
                              width: 56,
                              variant: IconButtonVariant.FillAmber50014,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgAutolayouthorizontal56x56,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 15,
                                bottom: 16,
                              ),
                              child: Text(
                                "Wallets",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ).copyWith(
                                  color: isDark ? ColorConstant.white : ColorConstant.black900
                                ),
                              ),
                            ),
                            Spacer(),
                               CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DarkSettingsGeneralScreen();
                          }));
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillOrange50014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal3,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "General",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SecurityAndPrivacy();
                          }));
                        },
                        child: Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillIndigoA40014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 18,
                                  bottom: 13,
                                ),
                                child: Text(
                                  "Security & Privacy",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Advanced_Screen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillRedA20014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal5,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "Advanced",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 56,
                              width: 56,
                              variant: IconButtonVariant.FillOrange50014,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgAutolayouthorizontal6,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 15,
                                bottom: 16,
                              ),
                              child: Text(
                                "Dark Mode",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                              ),
                            ),
                            Spacer(),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: state.isDarkTheme,
                              onChanged: (value) {
                                themeBloc.add(
                                  themeBloc.state.isDarkTheme
                                      ? ThemeSwitchOffEvent()
                                      : ThemeSwitchOnEvent(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSettingsContactsScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillPurple50014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal7,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "Contacts",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSettingsNotificationScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillRedA20014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal8,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "Notification",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSettingsHelpCenterScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillAmber50014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal9,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 18,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "Help Center",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSettingsInvitedFriendsScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillAmber50014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal10,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "Invite Friends",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return DarkSettingsAboutCristaScreen();
                            }));
                          },
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 56,
                                width: 56,
                                variant: IconButtonVariant.FillIndigoA40014,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAutolayouthorizontal11,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 15,
                                  bottom: 16,
                                ),
                                child: Text(
                                  "About EternalWallet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ).copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomIcon(size: 20, icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: isDark ? ColorConstant.gray800 : ColorConstant.gray300
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 14,
                        ),
                        child: Text(
                          "Follow us:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                    color: isDark ? ColorConstant.white : ColorConstant.black900
                                  ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(
                              99,
                            ),
                            crossAxisCount: 3,
                            mainAxisSpacing: getHorizontalSize(
                              12,
                            ),
                            crossAxisSpacing: getHorizontalSize(
                              12,
                            ),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: SocialLinks.length,
                          itemBuilder: (context, index) {
                            return GridframeItemWidget(
                              image: SocialLinks[index]['image'],
                              title: SocialLinks[index]['title'],
                              color: SocialLinks[index]['color'],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: bottombar(context, 4),
          ),
        );
      },
    );
  }
}

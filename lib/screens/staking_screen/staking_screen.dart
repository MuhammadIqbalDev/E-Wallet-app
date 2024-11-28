
import 'package:eternalwallet/screens/staking_screen/widgets/listchainsolana1_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../wallet_tokens_full_page/wallet_tokens_full_page.dart';

class DarkStakingScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  const DarkStakingScreen({required this.title, required this.imagePath})
      : super();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(62),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(text: title, margin: getMargin(left: 16)),
                actions: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomIcon(size: 25, icon: Icons.search),
                 )
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 18, right: 0),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: getPadding(top: 16.5, bottom: 16.5),
                          child: SizedBox(
                              width: getHorizontalSize(380),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: state.isDarkTheme
                                      ? ColorConstant.gray800
                                      : ColorConstant.gray300)));
                    },
                    itemCount: allcoins.length,
                    itemBuilder: (context, index) {
                      return Listchainsolana1ItemWidget(allcoins[index]['image'], allcoins[index]['name']);
                    })));
      },
    ));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:eternalwallet/screens/settings_invited_friends_screen/widgets/listellipse1_item_widget.dart';

import '../../widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';

class DarkSettingsInvitedFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Invite Friends", margin: getMargin(left: 16))),
            body: Padding(
                padding: getPadding(left: 24, top: 20, right: 24),
                child: Column(
                  children: [
                     Listellipse1ItemWidget(name: "Roochel Foose",number: "+1-300-555-036",invited: false,),
                     Listellipse1ItemWidget(name: "Roochel Foose",number: "+1-300-555-036",invited: true,),
                     Listellipse1ItemWidget(name: "Roochel Foose",number: "+1-300-555-036",invited: false,),
                  ],
                ) 
                
                )));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}

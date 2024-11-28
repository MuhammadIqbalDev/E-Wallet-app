import 'package:eternalwallet/screens/settings_contacts_screen/widgets/listellipse_item_widget.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';

import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';

import '../settings_add_contact_screen/settings_add_contact_screen.dart';

class DarkSettingsContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 52,
                leading: GotoBack(context),
                title:
                    AppbarTitle(text: "Contacts", margin: getMargin(left: 16)),
                actions: [
                  InkWell(
                     onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DarkSettingsAddContactScreen();
                      }));},
                    child: CustomIcon(size: 40, icon: Icons.add) ,
                  )
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 19, right: 24),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(24));
                    },
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListellipseItemWidget();
                    }))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

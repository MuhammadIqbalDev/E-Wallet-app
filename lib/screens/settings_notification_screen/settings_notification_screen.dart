import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class DarkSettingsNotificationScreen extends StatefulWidget {
  @override
  State<DarkSettingsNotificationScreen> createState() => _DarkSettingsNotificationScreenState();
}

class _DarkSettingsNotificationScreenState extends State<DarkSettingsNotificationScreen> {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

  bool isSelectedSwitch8 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Notification", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("General Notification",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            CustomSwitch(
                                value: isSelectedSwitch,
                                onChanged: (value) {
                                 setState(() {
                                    isSelectedSwitch = value;
                                 });
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Sound",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch1,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch1 = value;
                                     });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Vibrate",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch2,
                                    onChanged: (value) {
                                      setState(() {
                                        isSelectedSwitch2 = value;
                                      });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Price Alerts",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch3,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch3 = value;
                                     });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Sent & Receive",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch4,
                                    onChanged: (value) {
                                      setState(() {
                                        isSelectedSwitch4 = value;
                                      });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Product Announcements",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch5,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch5 = value;
                                     });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("App Updates",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    margin: getMargin(bottom: 1),
                                    value: isSelectedSwitch6,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch6 = value;
                                     });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("New Services Available",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch7,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch7 = value;
                                     });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 41, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("New Tips Available",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    margin: getMargin(bottom: 1),
                                    value: isSelectedSwitch8,
                                    onChanged: (value) {
                                     setState(() {
                                        isSelectedSwitch8 = value;
                                     });
                                    })
                              ]))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}

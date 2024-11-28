import 'package:eternalwallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../notification_list_screen/notification_list_screen.dart';


class DarkNotificationEmptyScreen extends StatefulWidget {
  @override
  State<DarkNotificationEmptyScreen> createState() => _DarkNotificationEmptyScreenState();
}

class _DarkNotificationEmptyScreenState extends State<DarkNotificationEmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 52,
                leading: GotoBack(context),
                title: AppbarTitle(
                    text: "Notification", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      imagePath: ImageConstant.imgClockWhiteA700,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 36, top: 140, right: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage300x300,
                          height: getSize(300),
                          width: getSize(300)),
                      Padding(
                          padding: getPadding(top: 63),
                          child: Text("Empty",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24)),
                      Padding(
                          padding: getPadding(top: 12, bottom: 5),
                          child: Text(
                              "You don't have any notifications at this time",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2))))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
    @override
  void didChangeDependencies() {
      Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DarkNotificationListScreen()),
        
      );
    });
    super.didChangeDependencies();
  }
}

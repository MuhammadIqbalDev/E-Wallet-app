import 'package:flutter/material.dart';
import 'package:eternalwallet/core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../browser_page/browser_page.dart';
import '../discover_full_page/discover_full_page.dart';


// ignore_for_file: must_be_immutable
class DarkDiscoverFullPageContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.darkDiscoverFullPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Discover:
        return AppRoutes.darkDiscoverFullPage;
      case BottomBarEnum.Browser:
        return AppRoutes.darkBrowserPage;
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.darkDiscoverFullPage:
        return DarkDiscoverFullPage();
      case AppRoutes.darkBrowserPage:
        return DarkBrowserPage();
      default:
        return Scaffold(
          body: Center(child: Text("Page Not Found"),)
        );
    }
  }
}

import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';

class Advanced_Screen extends StatefulWidget {
  const Advanced_Screen();

  @override
  State<Advanced_Screen> createState() => _Advanced_ScreenState();
}

class _Advanced_ScreenState extends State<Advanced_Screen> {
  bool _toggleValue = true;
  bool gc = false;
  bool hd = false;
  bool tn = false;
  bool w3 = false;
  bool br = false;
  bool td = false;

  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark = state.isDarkTheme;
        return Scaffold(
          appBar: CustomAppBar(
              height: getVerticalSize(67),
              leadingWidth: 52,
              leading: GotoBack(context),
              title:
                  AppbarTitle(text: "Advanced", margin: getMargin(left: 16))),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''State Logs''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      '''State logs contain your public account addresses and sent transactions.''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular16),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 380.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            width: 2.0,
                            color: ColorConstant.orange400,
                          ),
                        ),
                        child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            // overflow: Overflow.visible,
                            children: [
                              Positioned(
                                left: 80,
                                top: 7.0,
                                right: null,
                                bottom: null,
                                width: 179.0,
                                height: 27.0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('''Download State Logs''',
                                      // overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistSemiBold18Orange400),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''Sync with desktop''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 380.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            width: 2.0,
                            color: ColorConstant.orange400,
                          ),
                        ),
                        child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            // overflow: Overflow.visible,
                            children: [
                              Positioned(
                                left: 80,
                                top: 7.0,
                                right: null,
                                bottom: null,
                                width: 179.0,
                                height: 27.0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '''Sync with desktop''',
                                    // overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistSemiBold18Orange400,
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''State Logs''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''State logs contain your public account addresses and sent transactions.''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular16,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 380.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            width: 2.0,
                            color: ColorConstant.orange400,
                          ),
                        ),
                        child: Stack(
                            fit: StackFit.expand,
                            alignment: Alignment.center,
                            // overflow: Overflow.visible,
                            children: [
                              Positioned(
                                left: 80,
                                top: 7.0,
                                right: null,
                                bottom: null,
                                width: 179.0,
                                height: 27.0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '''Download State Logs''',
                                    // overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistSemiBold18Orange400,
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Advanced Gas Controls',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: gc,
                              onChanged: (value) {
                                setState(() {
                                  gc = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Select this to show gas price and limit controls \ndirectly on the send and confirm screens.',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Show Hex Data',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: hd,
                              onChanged: (value) {
                                setState(() {
                                  hd = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Select this to show the hex data field on the send screen.',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold14b,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Customize Transaction Nonce',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: tn,
                              onChanged: (value) {
                                setState(() {
                                  tn = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Turn this on to change the nonce (transaction number) on confirmation screens. This is an advanced feature, use cautiously.',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold14b,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sync Data with 3Box',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: w3,
                              onChanged: (value) {
                                setState(() {
                                  w3 = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Turn on to have your settings backed up with 3Box. This feature is currently experimental; use at your own risk.',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold14b,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Dismiss Secret Recovery \nPhrase Backup Reminder',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: br,
                              onChanged: (value) {
                                setState(() {
                                  br = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Turn this on to dismiss the Secret Recovery Phrase backup reminder message. We highly recommend that you back up your Secret Recovery Phrase to avoid loss of funds.',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold14b),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Enhanced Token Detection',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18,
                            ),
                            CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: td,
                              onChanged: (value) {
                                setState(() {
                                  td = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'We use third-party APIs to detect and display new tokens sent to your wallet. Turn off if you don’t want the app to pull data from those services.',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold14b,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''IPFS Gateway''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''State logs contain your public account addresses and sent transactions.''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold14b,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        // overflow: Overflow.visible,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Container(
                               color:isDark ? ColorConstant.gray800: ColorConstant.gray300,
                            ),
                          ),
                          Positioned(
                              left: 20.0,
                              top: 17.0,
                              right: null,
                              bottom: null,
                              width: 345.0,
                              height: 27.0,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '''dweb.link''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style:AppStyle.txtUrbanistRomanBold18,
                                ),
                              ))
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '''Preferred Ledger Connection Type''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '''Customize how you connect your Ledger to EternalWallet. WebHID is recommended, but other options are available. Read more here: Learn more''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold14b,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                     
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Container(
                            color:isDark ? ColorConstant.gray800: ColorConstant.gray300,
                          ),
                        ),
                        Positioned(
                          left: 20.0,
                          top: 17.0,
                          right: null,
                          bottom: null,
                          width: 300.0,
                          height: 27.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                
                                child: Text(
                                  '''WebHID''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18,
                                ),
                              ),
                             CustomIcon(size: 20, icon:  Icons.arrow_drop_down,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

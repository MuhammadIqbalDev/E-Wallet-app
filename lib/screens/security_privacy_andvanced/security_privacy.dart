import 'package:eternalwallet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme_switch_bloc.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';

class SecurityAndPrivacy extends StatefulWidget {
  const SecurityAndPrivacy();

  @override
  State<SecurityAndPrivacy> createState() => _SecurityAndPrivacyState();
}

class _SecurityAndPrivacyState extends State<SecurityAndPrivacy> {
  bool _toggleValue = true;
  bool bio = false;
  bool faceid = false;
  bool rem = false;
  bool falsemood = false;
  bool income = false;
  bool detection = false;
  bool api = false;
  bool nft = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        bool isDark=state.isDarkTheme;
        return Scaffold(
            appBar:  CustomAppBar(
                  height: getVerticalSize(67),
                  leadingWidth: 52,
                  leading: GotoBack(context),
                  title:
                      AppbarTitle(text: "Security & Privacy", margin: getMargin(left: 16))),
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Reveal Secret Recovery Phrase''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style:AppStyle.txtUrbanistRomanBold20
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Protect your wallet by saving your secret recovery phrase in the saving & various places like on a piece of paper, password manager, and/or the cloud.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style:  AppStyle.txtUrbanistRegular16,
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
                              child: Center(
                                child: Text(
                                            '''Reveal Secret Recovery Phrase''',
                                            // overflow: TextOverflow.visible,
                                            textAlign: TextAlign.center,
                                            style:AppStyle.txtUrbanistRomanBold20Orange400,
                                          ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Password''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Choose a strong password to unlock EternalWallet app on your devices. If you lose this password, you will need your secret recovery phrase to re-import your wallet.''',
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
                              child: Center(
                                child: Text(
                                            '''Change Password''',
                                            // overflow: TextOverflow.visible,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtUrbanistRomanBold20Orange400,
                                          ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Auto-Lock''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Choose the amount of time before the application automatically locks.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular16,
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
                                  color: isDark ? ColorConstant.gray800 : ColorConstant.gray300,
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
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '''After 5 minutes''',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular18,
                                      ),
                                    ),
                                    CustomIcon(size: 20, icon: Icons.arrow_drop_down,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Unlock with Biometric',
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style:  AppStyle.txtUrbanistRomanBold20,
                            ),
                          CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: bio,
                              onChanged: (value) {
                                setState(() {
                                  bio = value;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Unlock with Face ID',
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20
                                ),
                                CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: faceid,
                              onChanged: (value) {
                                setState(() {
                                  faceid= value;
                                });
                              },
                            ),
                              ],
                            ),
                          ],
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
                                    'Turn on Remember me',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style:  AppStyle.txtUrbanistRomanBold20,
                                  ),
                                CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: rem,
                              onChanged: (value) {
                                setState(() {
                                  rem= value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'When remember me is on, anyone with access to \nyour phone can access your EternalWallet account.',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Show Private Key for “AndrewAinsley”''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''This is the private key for the current selected wallet account: AndrewAinsley. Never disclose this key. Anyone with your private key can fully control your account, including transferring away any of your funds.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular18
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
                                  color: ColorConstant.orange400
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
                                          '''Show Private Key''',
                                          // overflow: TextOverflow.visible,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            height: 1.3999999364217122,
                                            fontSize: 18.0,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            color:
                                                ColorConstant.orange400,
    
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        Divider(
                          color:ColorConstant.gray600,
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Privacy''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                        ),
                        SizedBox(
                          height: 29,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Clear Privacy Data''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Clear privacy data so all the websites mus request access to view account information again.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular18 ,
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
                                          '''Clear Privacy Data''',
                                          // overflow: TextOverflow.visible,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            height: 1.3999999364217122,
                                            fontSize: 18.0,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            color:
                                               ColorConstant.orange400,
    
                                            /* letterSpacing: 0.20000000298023224, */
                                          ),
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
                        SizedBox(
                          height: 29,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Clear Browser History''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Choose this option to clear all your entire browsing history.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular18
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
                                      left: 79,
                                      top: 7.0,
                                      right: null,
                                      bottom: null,
                                      width: 179.0,
                                      height: 27.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '''Clear Browser History''',
                                          // overflow: TextOverflow.visible,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            height: 1.3999999364217122,
                                            fontSize: 18.0,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            color:
                                               ColorConstant.orange400,
    
                                            /* letterSpacing: 0.20000000298023224, */
                                          ),
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
                        SizedBox(
                          height: 29,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '''Clear Browser Cookies''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Choose this option to clear all your entire browser cookies.''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular18,
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
                                      left: 108.6,
                                      top: 7.0,
                                      right: null,
                                      bottom: null,
                                      width: 179.0,
                                      height: 27.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '''Clear Browser Cookies''',
                                          // overflow: TextOverflow.visible,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            height: 1.3999999364217122,
                                            fontSize: 18.0,
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            color:
                                                ColorConstant.orange400,
    
                                            /* letterSpacing: 0.20000000298023224, */
                                          ),
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
                                    'Privacy Mode',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                 CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: falsemood,
                              onChanged: (value) {
                                setState(() {
                                  falsemood = value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Websites mus request access to view account information again.',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    'Show Incoming Transactions',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: income,
                              onChanged: (value) {
                                setState(() {
                                  income= value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Third party APIs (Etherscan) are used to show your incoming transactions in the history. Turn off if you don't want us to pull data from those services. ",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    'Use Phishing Detection',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: detection,
                              onChanged: (value) {
                                setState(() {
                                  detection = value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Display a warning for phishing domains targeting Ethereum users.',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    'Enable OpenSea API',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                 CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: api,
                              onChanged: (value) {
                                setState(() {
                                  api = value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Displaying NFT media & data may expose your IP address to centralized servers. Use OpenSea's API to fetch NFT data. NFT auto-detection relies on OpenSea's API, and will not be available when this is turned off. Enabling NFT auto-detection can expose you to fake NFTs being sent to your wallet by anyone, and can allow an attacker to learn your IP address from your Ethereum address.",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    'Autodetect NFTs ',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                  CustomSwitch(
                              margin: getMargin(
                                top: 16,
                                bottom: 16,
                              ),
                              value: nft,
                              onChanged: (value) {
                                setState(() {
                                  nft = value;
                                });
                              },
                            ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Displaying NFT media & data may expose your IP address to centralized servers. Third-party APIs (like OpenSea) are used to detect NFTs in your wallet. This exposes your account address with those services. Leave this disabled if you don't want the app to pull data from those services.",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    'Delete Wallet',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'This will remove all wallet related data from your device. Your accounts exist on the blockchain and are not related to EternalWallet. You can always recover your accounts using your Secret Recovery Phrase. ',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 380.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                width: 2.0,
                                color: Color.fromARGB(255, 201, 46, 46),
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
                                        '''Delete Wallet''',
                                        // overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.3999999364217122,
                                          fontSize: 18.0,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(255, 201, 46, 46),
    
                                          /* letterSpacing: 0.20000000298023224, */
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ))));
      },
    );
  }
}

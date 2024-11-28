

import 'package:flutter/cupertino.dart';

import '../screens/create_password_blank_form_screen/create_password_blank_form_screen.dart';
import '../screens/defi_tokens_screen/defi_tokens_screen.dart';
import '../screens/discover_full_page_container_screen/discover_full_page_container_screen.dart';
import '../screens/ethereum_edit_network_fee_screen/dark_send_ethereum_edit_network_fee_screen.dart';
import '../screens/lending_or_borrowing_screen/lending_or_borrowing_screen.dart';
import '../screens/notification_empty_screen/notification_empty_screen.dart';
import '../screens/notification_list_screen/notification_list_screen.dart';
import '../screens/receive_crypto_options_screen/receive_crypto_options_screen.dart';
import '../screens/receive_ethereum_qr_code_screen/receive_ethereum_qr_code_screen.dart';
import '../screens/scan_qr_code_screen/scan_qr_code_screen.dart';
import '../screens/secure_wallet_walkthrough_five_screen/secure_wallet_walkthrough_five_screen.dart';
import '../screens/secure_wallet_walkthrough_four_screen/secure_wallet_walkthrough_four_screen.dart';
import '../screens/secure_wallet_walkthrough_screen/secure_wallet_walkthrough_screen.dart';
import '../screens/secure_wallet_walkthrough_six_screen/secure_wallet_walkthrough_six_screen.dart';
import '../screens/secure_wallet_walkthrough_three_screen/secure_wallet_walkthrough_three_screen.dart';
import '../screens/secure_wallet_walkthrough_two_screen/secure_wallet_walkthrough_two_screen.dart';
import '../screens/send_crypto_options_screen/send_crypto_options_screen.dart';
import '../screens/send_ethereum_blank_form_screen/send_ethereum_blank_form_screen.dart';
import '../screens/send_ethereum_confirm_screen/send_ethereum_confirm_screen.dart';
import '../screens/send_ethereum_filled_form_screen/send_ethereum_filled_form_screen.dart';
import '../screens/send_ethereum_type_form_screen/send_ethereum_type_form_screen.dart';
import '../screens/settings_add_contact_screen/settings_add_contact_screen.dart';
import '../screens/settings_contacts_screen/settings_contacts_screen.dart';
import '../screens/settings_general_screen/settings_general_screen.dart';
import '../screens/settings_help_center_screen/settings_help_center_screen.dart';
import '../screens/settings_invited_friends_screen/settings_invited_friends_screen.dart';
import '../screens/settings_notification_screen/settings_notification_screen.dart';
import '../screens/settings_wallets_option_menu_screen/settings_wallets_option_menu_screen.dart';
import '../screens/smart_chain_or_bsc_screen/smart_chain_or_bsc_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../screens/staking_solana_screen/staking_solana_screen.dart';
import '../screens/walkthrough_four_screen/walkthrough_four_screen.dart';
import '../screens/walkthrough_three_screen/walkthrough_three_screen.dart';
import '../screens/walkthrough_two_screen/walkthrough_two_screen.dart';
import '../screens/wallet_setup_options_screen/wallet_setup_options_screen.dart';

class AppRoutes {
  static const String darkSettingsFullPage = '/dark_settings_full_page';

  static const String darkSettingsFullPageContainerScreen =
      '/dark_settings_full_page_container_screen';
  static const String darkWalletNftsNekochiminFullPage =
      '/dark_wallet_nfts_nekochimin_full_page';

  static const String darkSettingsWalletsOptionMenuScreen =
      '/dark_settings_wallets_option_menu_screen';

  static const String darkSettingsGeneralScreen =
      '/dark_settings_general_screen';

  static const String darkSettingsContactsScreen =
      '/dark_settings_contacts_screen';

  static const String darkSettingsAddContactScreen =
      '/dark_settings_add_contact_screen';

  static const String darkSettingsNotificationScreen =
      '/dark_settings_notification_screen';

  static const String darkSettingsHelpCenterScreen =
      '/dark_settings_help_center_screen';

  static const String darkSettingsInvitedFriendsScreen =
      '/dark_settings_invited_friends_screen';

  static const String darkSettingsAboutCristaScreen =
      '/dark_settings_about_crista_screen';

  static const String darkSplashScreen = '/dark_splash_screen';

  static const String darkWalkthroughTwoScreen = '/dark_walkthrough_two_screen';

  static const String darkWalkthroughThreeScreen =
      '/dark_walkthrough_three_screen';

  static const String darkWalkthroughFourScreen =
      '/dark_walkthrough_four_screen';

  static const String darkWalletSetupOptionsScreen =
      '/dark_wallet_setup_options_screen';

  static const String darkCreatePasswordBlankFormScreen =
      '/dark_create_password_blank_form_screen';

  static const String darkCreatePasswordFilledFormScreen =
      '/dark_create_password_filled_form_screen';

  static const String darkSecureWalletWalkthroughScreen =
      '/dark_secure_wallet_walkthrough_screen';

  static const String darkSecureWalletWalkthroughTwoScreen =
      '/dark_secure_wallet_walkthrough_two_screen';

  static const String darkSecureWalletWalkthroughThreeScreen =
      '/dark_secure_wallet_walkthrough_three_screen';

  static const String darkSecureWalletWalkthroughFourScreen =
      '/dark_secure_wallet_walkthrough_four_screen';

  static const String darkSecureWalletWalkthroughFiveScreen =
      '/dark_secure_wallet_walkthrough_five_screen';

  static const String darkSecureWalletWalkthroughSixScreen =
      '/dark_secure_wallet_walkthrough_six_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String darkWalletTokensFullPage =
      '/dark_wallet_tokens_full_page';

  static const String darkNotificationEmptyScreen =
      '/dark_notification_empty_screen';

  static const String darkNotificationListScreen =
      '/dark_notification_list_screen';

  static const String darkScanQrCodeScreen = '/dark_scan_qr_code_screen';

  static const String darkSendCryptoOptionsScreen =
      '/dark_send_crypto_options_screen';

  static const String darkSendEthereumBlankFormScreen =
      '/dark_send_ethereum_blank_form_screen';

  static const String darkSendEthereumTypeFormScreen =
      '/dark_send_ethereum_type_form_screen';

  static const String darkSendEthereumFilledFormScreen =
      '/dark_send_ethereum_filled_form_screen';

  static const String darkSendEthereumConfirmScreen =
      '/dark_send_ethereum_confirm_screen';

  static const String darkSendEthereumEditNetworkFeeScreen =
      '/dark_send_ethereum_edit_network_fee_screen';

  static const String darkReceiveCryptoOptionsScreen =
      '/dark_receive_crypto_options_screen';

  static const String darkReceiveEthereumQrCodeScreen =
      '/dark_receive_ethereum_qr_code_screen';
  static const String darkDiscoverFullPage = '/dark_discover_full_page';

  static const String darkDiscoverFullPageContainerScreen =
      '/dark_discover_full_page_container_screen';

  static const String darkStakingScreen = '/dark_staking_screen';

  static const String darkDefiTokensScreen = '/dark_defi_tokens_screen';

  static const String darkLendingOrBorrowingScreen =
      '/dark_lending_or_borrowing_screen';

  static const String darkSmartChainOrBscScreen =
      '/dark_smart_chain_or_bsc_screen';

  static const String darkStakingSolanaScreen = '/dark_staking_solana_screen';

  static const String darkBrowserPage = '/dark_browser_page';

  static const String darkHistoryScreen = '/dark_history_screen';

  static Map<String, WidgetBuilder> routes = {
  
    darkSettingsWalletsOptionMenuScreen: (context) =>
        DarkSettingsWalletsOptionMenuScreen(),
    darkSettingsGeneralScreen: (context) => DarkSettingsGeneralScreen(),
    darkSettingsContactsScreen: (context) => DarkSettingsContactsScreen(),
    darkSettingsAddContactScreen: (context) => DarkSettingsAddContactScreen(),
    darkSettingsNotificationScreen: (context) =>
        DarkSettingsNotificationScreen(),
    darkSettingsHelpCenterScreen: (context) => DarkSettingsHelpCenterScreen(),
    darkSettingsInvitedFriendsScreen: (context) =>
        DarkSettingsInvitedFriendsScreen(),
    darkDiscoverFullPageContainerScreen: (context) =>
        DarkDiscoverFullPageContainerScreen(),
    // darkStakingScreen: (context) => DarkStakingScreen(),
    darkDefiTokensScreen: (context) => DarkDefiTokensScreen(),
    darkLendingOrBorrowingScreen: (context) => DarkLendingOrBorrowingScreen(),
    darkSmartChainOrBscScreen: (context) => DarkSmartChainOrBscScreen(),
    darkStakingSolanaScreen: (context) => DarkStakingSolanaScreen(),

    darkSplashScreen: (context) => DarkSplashScreen(),
    darkWalkthroughTwoScreen: (context) => DarkWalkthroughTwoScreen(),
    darkWalkthroughThreeScreen: (context) => DarkWalkthroughThreeScreen(),
    darkWalkthroughFourScreen: (context) => DarkWalkthroughFourScreen(),
    darkWalletSetupOptionsScreen: (context) => DarkWalletSetupOptionsScreen(),
    darkCreatePasswordBlankFormScreen: (context) =>
        DarkCreatePasswordBlankFormScreen(),
    darkSecureWalletWalkthroughScreen: (context) =>
        DarkSecureWalletWalkthroughScreen(),
    darkSecureWalletWalkthroughTwoScreen: (context) =>
        DarkSecureWalletWalkthroughTwoScreen(),
    darkSecureWalletWalkthroughThreeScreen: (context) =>
        DarkSecureWalletWalkthroughThreeScreen(),
    darkSecureWalletWalkthroughFourScreen: (context) =>
        DarkSecureWalletWalkthroughFourScreen(),
    darkSecureWalletWalkthroughFiveScreen: (context) =>
        DarkSecureWalletWalkthroughFiveScreen(),
    darkSecureWalletWalkthroughSixScreen: (context) =>
        DarkSecureWalletWalkthroughSixScreen(),
    darkNotificationEmptyScreen: (context) => DarkNotificationEmptyScreen(),
    darkNotificationListScreen: (context) => DarkNotificationListScreen(),
    darkScanQrCodeScreen: (context) => DarkScanQrCodeScreen(),
    darkSendCryptoOptionsScreen: (context) => DarkSendCryptoOptionsScreen(),
    darkSendEthereumBlankFormScreen: (context) =>
        DarkSendEthereumBlankFormScreen(),
    darkSendEthereumTypeFormScreen: (context) =>
        DarkSendEthereumTypeFormScreen(),
    darkSendEthereumFilledFormScreen: (context) =>
        DarkSendEthereumFilledFormScreen(),
    darkSendEthereumConfirmScreen: (context) => DarkSendEthereumConfirmScreen(),
    darkSendEthereumEditNetworkFeeScreen: (context) =>
        DarkSendEthereumEditNetworkFeeScreen(),
    darkReceiveCryptoOptionsScreen: (context) =>
        DarkReceiveCryptoOptionsScreen(),
    darkReceiveEthereumQrCodeScreen: (context) =>
        DarkReceiveEthereumQrCodeScreen(),
  };
}

class DarkSettingsFullPageContainerScreen {
}

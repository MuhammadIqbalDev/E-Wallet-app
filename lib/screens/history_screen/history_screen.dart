// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eternalwallet/screens/history_screen/widgets/listchainpancak1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:eternalwallet/core/app_export.dart';
import 'package:eternalwallet/widgets/app_bar/appbar_title.dart';
import 'package:eternalwallet/widgets/app_bar/custom_app_bar.dart';
import 'package:eternalwallet/widgets/custom_icon_button.dart';
import '../../bloc/theme_switch_bloc.dart';
import '../delete_history_modal_confirmation_bottomsheet/delete_history_modal_confirmation_bottomsheet.dart';

class DarkHistoryScreen extends StatefulWidget {
  final String title;
 
  const DarkHistoryScreen({
    required this.title,
  
  }) : super();

  @override
  State<DarkHistoryScreen> createState() => _DarkHistoryScreenState();
}

class _DarkHistoryScreenState extends State<DarkHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: CustomAppBar(
                    height: getVerticalSize(63),
                    leadingWidth: 52,
                    leading: GotoBack(context),
                    title: AppbarTitle(
                        text: widget.title, margin: getMargin(left: 16)),
                    actions: [
                    widget.title!="Popular" ? InkWell(
                      onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return DarkDeleteHistoryModalConfirmationBottomsheet();
                                });
                          },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomIcon(size: 25, icon: Icons.delete_outline_rounded),
                      ),
                     ) : SizedBox()
                    ]),
                body:history.isEmpty ? Center(
                  child: Text("No ${widget.title} found...",style: AppStyle.txtRobotoRegular20,),
                ) :Padding(
                    padding: getPadding(left: 24, top: 19, right: 29),
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Padding(
                              padding: getPadding(top: 16.0, bottom: 16.0),
                              child: SizedBox(
                                  width: getHorizontalSize(380),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: state.isDarkTheme
                                          ? ColorConstant.gray800
                                          : ColorConstant.gray300)));
                        },
                        itemCount: history.length,
                        itemBuilder: (context, index) {
                          return widget.title!="Popular" ? Listchainpancak1ItemWidget(name: history[index]['name'] ,image: history[index]['image'],desc: history[index]['desc'],)
                           : Listchainpancak1ItemWidget(name: popular[index]['name'] ,image: popular[index]['image'],desc: popular[index]['desc'],)
                           ;
                        }))));
      },
    );
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}

List history = [
    {
      'name': "Pancake Swap",
      'desc': "it's acceptable by all of use...",
      'image': CustomImageView(
        svgPath: ImageConstant.imgChainpancakeswap,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "DAI",
      'desc': "We update our DAI...",
      'image': CustomImageView(
        imagePath: ImageConstant.dai,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Synthetix",
      'desc': "it's acceptable by all of use...",
      'image': CustomImageView(
        imagePath: ImageConstant.synthetix,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Tether USDT",
      'desc': "Tether , is an asset back...",
      'image': CustomImageView(
        imagePath: ImageConstant.tether,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Tron TRX",
      'desc': "Tron is a...",
      'image': CustomImageView(
        imagePath: ImageConstant.tron,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Neo NEO",
      'desc': "Neo is a curr...",
      'image': CustomImageView(
        imagePath: ImageConstant.neo,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "NEXO",
      'desc': "Neo is a curr...",
      'image': CustomImageView(
        imagePath: ImageConstant.nexo,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    
  ];
List popular= [
    {
      'name': "Pancake Swap",
      'desc': "it's acceptable by all of use...",
      'image': CustomImageView(
        svgPath: ImageConstant.imgChainpancakeswap,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "DAI",
      'desc': "We update our DAI...",
      'image': CustomImageView(
        imagePath: ImageConstant.dai,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Synthetix",
      'desc': "it's acceptable by all of use...",
      'image': CustomImageView(
        imagePath: ImageConstant.synthetix,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Tether USDT",
      'desc': "Tether , is an asset back...",
      'image': CustomImageView(
        imagePath: ImageConstant.tether,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Tron TRX",
      'desc': "Tron is a...",
      'image': CustomImageView(
        imagePath: ImageConstant.tron,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "Neo NEO",
      'desc': "Neo is a curr...",
      'image': CustomImageView(
        imagePath: ImageConstant.neo,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    {
      'name': "NEXO",
      'desc': "Neo is a curr...",
      'image': CustomImageView(
        imagePath: ImageConstant.nexo,
        height: getSize(
          48,
        ),
        width: getSize(
          48,
        ),
      )
    },
    
  ];
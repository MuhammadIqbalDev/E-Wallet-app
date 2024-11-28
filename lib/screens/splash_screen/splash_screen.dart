import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import '../walkthrough_two_screen/walkthrough_two_screen.dart';

class DarkSplashScreen extends StatefulWidget {
  @override
  State<DarkSplashScreen> createState() => _DarkSplashScreenState();
}

class _DarkSplashScreenState extends State<DarkSplashScreen> with SingleTickerProviderStateMixin {
  
      late AnimationController _controller;

  @override
  void initState() {
    super.initState();
  
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }
   @override
  void dispose() {
    _controller.dispose(); // Dispose of the AnimationController
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
Update(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 40,
            right: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
               
                  padding: getPadding(
                    left: 27,
                    top: 41,
                    right: 27,
                    bottom: 41,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/splashbackground.png"))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgGroupOrangeA200,
                        height: getVerticalSize(
                          114,
                        ),
                        width: getHorizontalSize(
                          219,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                          bottom: 45,
                        ),
                        child: Text(
                          "EternalWallet",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.textStyleSajjad,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
                
   
              
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 200,
          color: Colors.transparent,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(50.0),
                child:RotationTransition(
                  turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                  child: CustomImageView(
                  imagePath: ImageConstant.imgVector60x60,
                  height: getSize(
                    60,
                  ),
                  width: getSize(
                    60,
                  ),
                              ),
                ),
              ),
          ),
        ),
      ),
    );
  }
    @override
  void didChangeDependencies() {
      Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => DarkWalletTokensFullPage()),
        MaterialPageRoute(builder: (context) => DarkWalkthroughTwoScreen()),
      );
    });
    super.didChangeDependencies();
  }

}

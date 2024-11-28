import 'package:carousel_slider/carousel_slider.dart';
import 'package:eternalwallet/screens/walkthrough_two_screen/widgets/slidername_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../walkthrough_three_screen/walkthrough_three_screen.dart';

class DarkWalkthroughTwoScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.secure,
                height: getVerticalSize(
                  400,
                ),
                width: getHorizontalSize(
                  399,
                ),
                margin: getMargin(
                  top: 41,
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 41,
                  ),
                  padding: getPadding(
                    left: 24,
                    top: 36,
                    right: 24,
                    bottom: 36,
                  ),
                  decoration: AppDecoration.fillGray900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL60,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            170,
                          ),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (
                            index,
                            reason,
                          ) {
                            silderIndex = index;
                          },
                        ),
                        itemCount: 1,
                        itemBuilder: (context, index, realIndex) {
                          return SlidernameItemWidget();
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                     
                     
                          Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.orange400,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                          ),
                       
                          Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.gray500,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                          ),
                       
                          Container(
                            height: getVerticalSize(
                              8,
                            ),
                            margin: getMargin(
                              top: 41,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: silderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.orangeA200,
                                dotColor: ColorConstant.gray500,
                                dotHeight: getVerticalSize(
                                  8,
                                ),
                                dotWidth: getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                          ),
                       
                       
                        ],
                      ),
                     
                      InkWell(splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
                        onTap: (){
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DarkWalkthroughThreeScreen()),
        
      );
                        },
                        child: CustomButton(
                          text: "Next",
                          margin: getMargin(
                            top: 20,
                          ),
                          variant: ButtonVariant.OutlineOrangeA2003f,
                          shape: ButtonShape.CircleBorder29,
                          padding: ButtonPadding.PaddingT18,
                          fontStyle:  ButtonFontStyle.UrbanistRomanBold18b,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

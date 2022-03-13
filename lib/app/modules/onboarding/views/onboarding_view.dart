import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';
import 'package:kadoin/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: controller.pageList
          .map(
            (value) => PageViewModel(
              titleWidget: Text(
                value['title'],
                style: TextStyleApp.xl(isBold: true, color: ColorApp.primaryColor),
              ),
              bodyWidget: Text(
                value['body'],
                style: TextStyleApp.m(isBold: false, color: ColorApp.baseAccentColor),
                textAlign: TextAlign.center,
              ),
              image: SvgPicture.asset(
                value['image'],
              ),
              decoration: PageDecoration(
                imageFlex: 2,
                contentMargin: EdgeInsets.symmetric(horizontal: PaddingSizeApp.m),
              ),
            ),
          )
          .toList(),
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
        activeColor: ColorApp.primaryColor,
        color: ColorApp.primaryAccentColor,
      ),
      showSkipButton: true,
      skip: Text('Skip'),
      skipStyle: ElevatedButton.styleFrom(
        primary: ColorApp.primaryAccentColor, // background
        onPrimary: ColorApp.baseColor, // foreground
      ),
      next: Text('Next'),
      nextStyle: ElevatedButton.styleFrom(
        primary: ColorApp.primaryColor, // background
        onPrimary: ColorApp.baseColor, // foreground
      ),
      done: Text('Mulai'),
      doneStyle: ElevatedButton.styleFrom(
        primary: ColorApp.primaryColor, // background
        onPrimary: ColorApp.baseColor, // foreground
      ),
      onDone: () {
        Get.offAndToNamed(Routes.HOME);
      },
      controlsMargin: EdgeInsets.only(
        bottom: PaddingSizeApp.s,
        left: PaddingSizeApp.m,
        right: PaddingSizeApp.m,
      ),
    );
  }
}

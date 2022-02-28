import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';
import 'package:kadoin/app/global_widgets/app_bar.dart';
import 'package:kadoin/app/modules/home/widget/category_section.dart';
import 'package:kadoin/app/modules/home/widget/header_section.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.baseColor,
      appBar: PreferredSize(child: AppBarApp(), preferredSize: Size(double.infinity, 60)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSectionHome(height: 80),
            CategorySectionHome(height: 120),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(5),
                  color: ColorApp.disabledColor,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: ColorApp.primaryColor,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: ColorApp.secondaryColor,
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

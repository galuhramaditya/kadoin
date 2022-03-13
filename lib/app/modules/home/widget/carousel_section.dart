import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/color.dart';

class CarouselSectionHome extends StatelessWidget {
  const CarouselSectionHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
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
    );
  }
}

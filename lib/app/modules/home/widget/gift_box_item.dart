import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';

class GiftBoxItemHome extends StatelessWidget {
  const GiftBoxItemHome({
    Key? key,
    required this.image,
    required this.title,
    this.borderRadius,
    this.width = 150,
    required this.topColor,
    required this.bottomColor,
  }) : super(key: key);

  final String image;
  final String title;
  final BorderRadius? borderRadius;
  final double width;
  final Color topColor;
  final Color bottomColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: PaddingSizeApp.m),
            child: SvgPicture.asset(
              'assets/icons/Pita.svg',
              color: topColor,
              height: 30,
            ),
          ),
          Container(
            width: width,
            child: AspectRatio(
              aspectRatio: 180 / 200,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: PaddingSizeApp.xs, horizontal: PaddingSizeApp.l),
                decoration: BoxDecoration(
                  color: ColorApp.primaryColor,
                  gradient: LinearGradient(
                    colors: [topColor, bottomColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.7],
                  ),
                  borderRadius: borderRadius,
                ),
                child: Column(
                  children: [
                    Image.network(
                      image,
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Center(
                        child: AutoSizeText(
                          title,
                          style: TextStyleApp.m(color: ColorApp.baseColor),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

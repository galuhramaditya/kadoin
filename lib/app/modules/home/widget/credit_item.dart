import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/core/values/text.dart';

class CreditItem extends StatelessWidget {
  const CreditItem({
    Key? key,
    required this.svgPath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String svgPath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingSizeApp.m),
      child: Row(
        children: [
          SvgPicture.asset(
            svgPath,
            width: IconSizeApp.l,
            height: IconSizeApp.l,
          ),
          SizedBox(width: PaddingSizeApp.m),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyleApp.m(isBold: true),
              ),
              Text(
                subtitle,
                style: TextStyleApp.s(color: ColorApp.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

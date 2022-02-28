import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/text.dart';

class CategoryItemHome extends StatelessWidget {
  const CategoryItemHome({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      color: ColorApp.baseColor,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              iconPath,
              width: double.infinity,
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyleApp.s(),
            ),
          )
        ],
      ),
    );
  }
}

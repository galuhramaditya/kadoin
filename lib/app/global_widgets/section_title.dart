import 'package:flutter/material.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/text.dart';

class SectionTitleApp extends StatelessWidget {
  const SectionTitleApp({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.trailingText,
    this.onTrailingPressed,
  }) : super(key: key);

  final String title;
  final double? width;
  final double? height;
  final String? trailingText;
  final Function()? onTrailingPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyleApp.l(isBold: true),
            ),
          ),
          Flexible(
            child: GestureDetector(
                onTap: onTrailingPressed,
                child: Text(
                  trailingText ?? '',
                  style: TextStyleApp.s(color: ColorApp.primaryColor),
                )),
          )
        ],
      ),
    );
  }
}

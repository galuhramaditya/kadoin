import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kadoin/app/core/values/color.dart';

class FABApp extends StatelessWidget {
  const FABApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: SvgPicture.asset(
        'assets/icons/Fab.svg',
        width: 50,
      ),
      backgroundColor: ColorApp.baseColor,
      onPressed: () {},
    );
  }
}

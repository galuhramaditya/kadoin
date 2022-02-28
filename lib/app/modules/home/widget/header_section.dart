import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kadoin/app/core/utils/helpers.dart';
import 'package:kadoin/app/core/values/color.dart';
import 'package:kadoin/app/core/values/size.dart';
import 'package:kadoin/app/modules/home/widget/credit_item.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class HeaderSectionHome extends StatelessWidget {
  const HeaderSectionHome({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        alignment: Alignment(0, 1),
        children: [
          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.bottom,
              list: [
                BezierCurveSection(
                  start: Offset(0, height),
                  top: Offset(Get.width / 2, height / 3),
                  end: Offset(Get.width, height),
                ),
              ],
            ),
            child: Container(
              color: ColorApp.primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: PaddingSizeApp.m),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(BorderRadiusSizeApp.m),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(BorderRadiusSizeApp.m),
                  color: ColorApp.baseColor,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CreditItem(
                        svgPath: 'assets/icons/Points.svg',
                        title: Helper.numberInt(10000),
                        subtitle: 'Poin',
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(BorderRadiusSizeApp.xs),
                        color: ColorApp.disabledAccentColor,
                      ),
                    ),
                    Expanded(
                      child: CreditItem(
                        svgPath: 'assets/icons/Voucher.svg',
                        title: '4 Tiket',
                        subtitle: 'Voucher',
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

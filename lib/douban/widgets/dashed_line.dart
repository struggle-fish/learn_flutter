import 'package:flutter/material.dart';


/*
    axix 虚线的方向
    dashwidth 宽度
    dashHeight 高度
    count 内部会根据设置的个数和宽高确定密度
    color 颜色
* */

class HYDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  const HYDashedLine(
  {
   this.axis = Axis.horizontal,
   this.dashedWidth = 10,
   this.dashedHeight = 2,
   this.count = 10,
   this.color = const Color(0xffff0000),
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: axis,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 计算虚线的间距
        children: List.generate(count, (index) {
          return SizedBox(
            width: dashedWidth,
            height: dashedHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          );
        }),
    );
  }
}

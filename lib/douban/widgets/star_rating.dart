import 'package:flutter/material.dart';
// 评分星星
class HYStarRating extends StatefulWidget {
  final num rating; // 当前分值
  final double maxRating; // 满分
  final int count; // 数量
  final double size; // 大小
  final Color unselectdColor; // 未选中的颜色
  final Color selectedColor; // 选择后的颜色
  final Widget unselectedImage; // TODO: 这里有问题，怎么做呢传递进来用传递的，否则默认Icon
  final Widget selectedImage;

  const HYStarRating(
      {
        required this.rating,
        this.maxRating = 10,
        this.count = 5,
        this.size = 30,
        this.unselectdColor = const Color(0xffbbbbbb),
        this.selectedColor = const Color(0xffff0000),
        // unselectedImage
        Widget? unselectedImage,
        Widget? selectedImage,
      }) : unselectedImage = unselectedImage ??  const Icon(Icons.star_border, color: Color(0xffbbbbbb), size: 30,),
        selectedImage = selectedImage ??  const Icon(Icons.star, color: Color(0xffff0000), size: 30,),
        super();
  // : unselectedImage = unselectedImage ??  Icon(Icons.star_border, color: unselectdColor, size: wsize,)
  //   super();

  @override
  State<HYStarRating> createState() => _HYStarRatingState();
}

class _HYStarRatingState extends State<HYStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStart(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStart(),
        ),
      ],
    );
  }

  // 创建底部的星星
  List<Widget> buildUnselectedStart() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
      // return Icon(
      //   Icons.star_border,
      //   color: widget.unselectdColor,
      //   size: widget.size,
      // );
    });
  }

  List<Widget> buildSelectedStart() {
    // 创建 star
    List<Widget> stars = [];
    // final star = Icon(
    //   Icons.star,
    //   color: widget.selectedColor,
    //   size: widget.size,
    // );
    final star = widget.selectedImage;
    // 构建满 star 一个星星的值
    double oneValue = widget.maxRating / widget.count;
    // 计算有几个满星星
    int entireCount = (widget.rating / oneValue).floor();

    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    // 构建部分 star  3.5 - 3 = 0.5 * 宽度 = 裁剪的宽度
    double leftwidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    // 裁剪
    final halfStar = ClipRect(
      child: star,
      clipper: HYStarClipper(leftwidth),
    );

    stars.add(halfStar);
    if (stars.length > widget.count) {
      return stars.sublist(0, widget.count);
    }
    return stars;
  }
}

// 自定义裁剪
class HYStarClipper extends CustomClipper<Rect> {
  double width;

  HYStarClipper(this.width);

  // 裁剪
  @override
  Rect getClip(Size size) {
    // Rect.fromLTRB(left, top, right, bottom);
    return Rect.fromLTRB(0, 0, width, size.height); // 一个正方形的裁剪
  }

  // 动态重新裁剪  旧的和新的不相等的时候就需要重新裁剪了
  @override
  bool shouldReclip(HYStarClipper oldClipper) {
    return oldClipper.width != this.width;
  }
}
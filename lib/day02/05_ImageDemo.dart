import 'package:flutter/material.dart';
class ImageDemo2 extends StatelessWidget {
  const ImageDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/autohomedealer__ChwFRl_7xauAaYWPAAFcSUswvQ0960.jpeg'),
    );
  }
}


class ImageDemo3 extends StatelessWidget {
  const ImageDemo3({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
        fadeInDuration: Duration(seconds: 3),
        fadeOutDuration: Duration(seconds: 3),
        placeholder: AssetImage(
            'assets/images/autohomedealer__ChwFRl_7xauAaYWPAAFcSUswvQ0960.jpeg'
        ),
        image: NetworkImage(
            imageURL
        )
    );
  }
}


class ImageDemo extends StatelessWidget {
  final imageURL = 'https://club2.autoimg.cn/album/g26/M02/4C/44/userphotos/2020/07/25/10/820_ChwFkF8bniOAU_8EAJavO73o2KM848.jpg';

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageURL),
      // color: Colors.red,
      // colorBlendMode: BlendMode.colorDodge,
      width: 200,
      height: 200,
      fit: BoxFit.contain,
      repeat: ImageRepeat.repeatY,
      // alignment: Alignment.topCenter,
      // alignment: Alignment(0, -1),
    );
  }
}


class IconDemo extends StatelessWidget {
  const IconDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.pets,
      size: 200,
      color: Colors.orange,
    );
  }
}
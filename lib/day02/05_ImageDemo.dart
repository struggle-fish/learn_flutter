import 'package:flutter/material.dart';



class ImageBasicDemo extends StatelessWidget {
  const ImageBasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('图片Widget'),
        ),
        body: ListView(
          children: [
            IconDemo(),
            // ImageDemo(),
            // ImageDemo1(),
            ImageDemo2(),
            ButtonDemo1(),
            ImageDemo3(imageURL: 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg'),
          ],
        ),
      ),
    );
  }
}


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

class ImageDemo1 extends StatefulWidget {
  const ImageDemo1({Key? key}) : super(key: key);

  @override
  State<ImageDemo1> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo1> {

  final imageURL1 = 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg';


  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageURL1),
      // color: Colors.red,
      // colorBlendMode: .colorDodge,
      // width: 200,BlendMode
      // height: 200,
      fit: BoxFit.contain,
      // repeat: ImageRepeat.repeatY,
      alignment: Alignment.bottomCenter,
      // alignment: Alignment(0, -1),
    );
  }
}

class ImageDemo extends StatelessWidget {
  final imageURL = 'https://club2.autoimg.cn/album/g26/M02/4C/44/userphotos/2020/07/25/10/820_ChwFkF8bniOAU_8EAJavO73o2KM848.jpg';
  // final imageURL = 'https://club2.autoimg.cn/album/g30/M02/08/77/userphotos/2020/06/24/18/820_ChsEoF7zMcOAGV5MAAdFGZhTvIs136.jpg';

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageURL),
      // color: Colors.red,
      // colorBlendMode: BlendMode.colorDodge,
      width: 200,
      height: 200,
      fit: BoxFit.contain,
      // repeat: ImageRepeat.repeatY,
      alignment: Alignment.topCenter,
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

class ButtonDemo1 extends StatefulWidget {
  const ButtonDemo1({Key? key}) : super(key: key);

  @override
  State<ButtonDemo1> createState() => _ButtonDemo1State();
}

class _ButtonDemo1State extends State<ButtonDemo1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonTheme(
            minWidth: 20,
            height: 20,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('测试啊'),
            ),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                minimumSize: MaterialStateProperty.all(Size.zero),
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(Size(100, 30)),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 30,
                ))
            ),
            child: Text('文本按钮1')
        ),
        // SizedBox(width: 20,),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 30,
                ))
            ),
            child: Text('文本按钮2')
        )
      ],
    );
  }
}

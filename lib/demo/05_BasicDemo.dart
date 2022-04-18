import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  BasicDemo({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://club2.autoimg.cn/album/g10/M0C/62/5E/userphotos/2021/01/31/02/820_ChwEnGAVn4yAKgi6AJ3Q7JJDB0Y482.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          // 添加滤镜
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400]!.withOpacity(0.4),
              BlendMode.hardLight,
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(18),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 7),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 1,
                  spreadRadius: -2
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(2, 12, 155, 1),
                ]
              )
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent,
              //     width: 3,
              //     style: BorderStyle.solid
              //   ),
              //   bottom: BorderSide(
              //       color: Colors.indigoAccent,
              //       width: 3,
              //       style: BorderStyle.solid
              //   )
              // )
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo2 extends StatelessWidget {
  const TextDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '你好全世界',
        style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 20,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: '啊哈哈哈',
            style: TextStyle(
              color: Colors.green
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      fontSize: 16
  );
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
        '${_title}君不见黄河之水天上来，奔流到海不复回，君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月${_author}',
        textAlign: TextAlign.left,
        style: _textStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
    );
  }
}

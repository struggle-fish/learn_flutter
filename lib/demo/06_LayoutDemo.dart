import 'package:flutter/material.dart';




class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AspectDemo(),
        StackDemo(),
        SizeBoxDemo(),
        RowDemo(),
        ColumnDemo(),
      ],
    );
  }
}

class AspectDemo extends StatelessWidget {
  const AspectDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Colors.indigoAccent,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
              maxWidth: 100,
            ),
            child: Container(
              color: Colors.indigoAccent,
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 54, 255, 1),
                ]
              )
            ),
          ),
        ),
        Icon(Icons.ac_unit, color: Colors.white,size: 32,),
        Positioned(
          top: 40,
          left: 20,
          child: Text('你好全世界'),
        )
      ],
    );
  }
}

class SizeBoxDemo extends StatelessWidget {
  const SizeBoxDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              alignment: Alignment(1,1),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.ac_unit, color: Colors.white,size: 32,),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Container(
              alignment: Alignment(-1, 0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.ac_unit, color: Colors.white,size: 32,),
            ),
          )
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access, size: 64,),
        IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access),
        IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}


class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}

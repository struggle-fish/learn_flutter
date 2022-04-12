import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text('ElevatedButton'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.red),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
          ),
          onPressed: (){
          },
        ),
        TextButton(
          child: Text('TextButton'),
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20, color: Colors.red)),
              foregroundColor: MaterialStateProperty.all(Colors.black),
              elevation: MaterialStateProperty.all(0)
          ),
          onPressed: (){},
        ),
        OutlinedButton(
          child: Text('OutlinedButton'),
          onPressed: () {},
        ),
        FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
            onPressed: (){}
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(4)
            )),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite, color: Colors.red),
              Text('喜欢作者1')
            ],
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

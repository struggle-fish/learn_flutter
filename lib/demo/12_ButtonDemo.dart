import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  ButtonDemo({Key? key}) : super(key: key);
  final Widget TextButtonDemo =  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
          onPressed: (){},
          child: Text('文字按钮'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
            foregroundColor:  MaterialStateProperty.all(Colors.red),
          )
      ),
      SizedBox(width: 20,),
      TextButton.icon(
          onPressed: (){},
          icon: Icon(Icons.add),
          label: Text('文字按钮')
      )
    ],
  );
  final Widget ElevatedButtonDemo =  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: (){},
          child: Text('按钮'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
            foregroundColor:  MaterialStateProperty.all(Colors.red),
          )
      ),
      SizedBox(width: 20,),
      ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(Icons.add),
          label: Text('按钮')
      )
    ],
  );

  final Widget OutlineButtonDemo =  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      OutlinedButton(
          onPressed: (){},
          child: Text('按钮'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
            foregroundColor:  MaterialStateProperty.all(Colors.red),
            overlayColor: MaterialStateProperty.all(Colors.green),
            side: MaterialStateProperty.all(BorderSide(width: 5.0, color: Colors.blue)),
          )
      ),
      SizedBox(width: 20,),
      Container(
        width: 120,
        child: OutlinedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.add),
            label: Text('按钮')
        ),
      )
    ],
  );

  final Widget FixedWitchButtonDemo =  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        flex: 1,
        child:  ElevatedButton(
            onPressed: (){},
            child: Text('按钮'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              foregroundColor:  MaterialStateProperty.all(Colors.red),
            )
        ),
      ),
      SizedBox(width: 20,),
      Expanded(
        flex: 2,
        child:  ElevatedButton(
            onPressed: (){},
            child: Text('按钮'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
              foregroundColor:  MaterialStateProperty.all(Colors.red),
            )
        ),
      )
    ],
  );

  final Widget ButtonBarButtonDemo =  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ButtonBar(
        buttonPadding: EdgeInsets.all(30),
        children: [
          ElevatedButton(
              onPressed: (){},
              child: Text('按钮222'),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
                foregroundColor:  MaterialStateProperty.all(Colors.red),
              )
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('按钮111'),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
                foregroundColor:  MaterialStateProperty.all(Colors.red),
              )
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Button展示'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonDemo,
            ElevatedButtonDemo,
            OutlineButtonDemo,
            FixedWitchButtonDemo,
            ButtonBarButtonDemo
          ],
        ),
      ),
    );
  }
}


class FloatingActionButtonDemo extends StatelessWidget {

  FloatingActionButtonDemo({ Key? key }): super(key: key);

  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){

    },
    child: Icon(Icons.add),
    elevation: 0,
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.white,
    // shape: BeveledRectangleBorder(), // 修改形状
  );
  final Widget _floatinActionButtonExtend = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('添加按钮'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
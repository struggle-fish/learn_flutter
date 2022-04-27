import 'package:flutter/material.dart';


enum Option {
  A,
  B,
  C
}

enum Action {
  OK,
  Cancel
}

class DialogDemo extends StatefulWidget {
  const DialogDemo({Key? key}) : super(key: key);

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  String userChoice = 'Nothing';
  String alertChoice = 'Nothing';
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  Future _openSimpleDialog () async {
    final options = await showDialog(context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('你选谁'),
            children: [
              SimpleDialogOption(
                child: Text('选A'),
                onPressed: () {
                  print(userChoice + '点击了谁呀');
                  Navigator.pop(context, Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text('选B'),
                onPressed: () {
                  Navigator.pop(context,  Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text('选C'),
                onPressed: () {
                  Navigator.pop(context,  Option.C);
                },
              )
            ],
          );
        }
    );

    switch(options) {
      case Option.A:
        setState(() {
          userChoice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          userChoice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          userChoice = 'C';
        });
        break;
    }
  }



  Future _openAlertDialog () async{
    final options = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('弹窗'),
            content: Text('我是弹窗'),
            actions: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, Action.Cancel);
                  },
                  child: Text('取消')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, Action.OK);
                  },
                  child: Text('确定')
              )
            ],
          );
        }
    );
    switch(options) {
      case Action.OK:
        setState(() {
          alertChoice = 'OK';
        });
        break;
      case Action.Cancel:
        setState(() {
          alertChoice = '取消';
        });
        break;
    }
  }


  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState!.showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.pause_circle_outline_outlined),
              SizedBox(width: 16,),
              Text('展示文字'),
              Expanded(
                  child: Text(
                      '展示文字1111',
                      textAlign: TextAlign.right,
                  )
              ),
            ],
          ),
        ),
      );
    });
  }


  Future _openModalBottomSheet() async {
    final options = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text('选项A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('选项B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('选项C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                )
              ],
            ),
          );
        }
    );
    print(options + '当前点击的返回');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('对话框demo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('我选择了哪个--${userChoice}'),
                Text('alert我选择了--${alertChoice}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: _openAlertDialog,
                        child: Text('AlertDialogButton')
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: _openBottomSheet,
                    child: Text('点击底部提示')
                ),
                ElevatedButton(
                    onPressed: _openModalBottomSheet,
                    child: Text('打开对话框')
                ),
                SnackBarButtonDemo(),
                ExpansionPanelListDemo()
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}


class SnackBarButtonDemo extends StatelessWidget {
  const SnackBarButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('加载中。。。'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {

                },
              ),
          ));
        },
        child: Text('Open SnackBar')
    );
  }
}


class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText = '',
    required this.body,
    this.isExpanded = false,
  });

}


class ExpansionPanelListDemo extends StatefulWidget {
  const ExpansionPanelListDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<ExpansionPanelItem> _expansionPanelItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem> [
      ExpansionPanelItem(
        headerText: '面板A',
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text('内容内容A'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: '面板B',
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text('内容内容B'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: '面板C',
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Text('内容内容C'),
        ),
        isExpanded: false,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded){
        setState(() {
          _expansionPanelItems[index].isExpanded = !isExpanded;
        });
      },
      children: _expansionPanelItems.map((ExpansionPanelItem item){
        return ExpansionPanel(
          // headerBuilder: (BuildContext context, bool isExpanded) {
          //   return Container(
          //     padding: EdgeInsets.all(16),
          //     child: Text('面板A', style: Theme.of(context).textTheme.titleSmall,),
          //   );
          // },
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                padding: EdgeInsets.all(16),
                child: Text(item.headerText, style: Theme.of(context).textTheme.titleSmall,),
              );
            },
            body: item.body,
            isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}




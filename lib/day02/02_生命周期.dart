import 'package:flutter/material.dart';

// void main() => runApp(
//     MyApp()
// );


class LifeCycle extends StatelessWidget {
  const LifeCycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LifeCycleHomePage(),
    );
  }
}

class LifeCycleHomePage extends StatefulWidget {
  const LifeCycleHomePage({Key? key}) : super(key: key);

  @override
  State<LifeCycleHomePage> createState() => _LifeCycleHomePage();
}

class _LifeCycleHomePage extends State<LifeCycleHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('生命周期'),
      ),
      body: Column(

        children: [
          HomeContentLifeCle() // 每次都是新的时候，就会触发didUpdateWidget
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: (){
            setState(() {
            });
          },
          icon: Icon(Icons.add),
          label: Text('添加啊')),
    );
  }
}


class HomeContentLifeCle extends StatefulWidget {
  HomeContentLifeCle() {
    print('生命周期-1---调用HomeContent的constructor');
  }

  @override
  State<HomeContentLifeCle> createState() {
    print('生命周期-2---调用HomeContent的createState方法');
    return _HomeContentLifeCle();
  }
}

class _HomeContentLifeCle extends State<HomeContentLifeCle> {
  int _counter = 0;

  _HomeContentLifeCle() {
    print('生命周期-3---调用_HomeContentState的constructor');
  }

  @override
  void initState() {
    print('生命周期-4---调用initState');
    // 这里必须调用 super
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeContentLifeCle oldWidget) {
    // TODO: implement didUpdateWidget
    print('生命周期-----didUpdateWidget---用的比较少');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('生命周期----状态依赖更新');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('生命周期-5---调用build');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: Column(
            children: [
              Icon(Icons.favorite),
              Text('点击')
            ],
          )
        ),
        Text('当前数字${_counter}')
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('6---调用dispose销毁方法');
    super.dispose();
  }
}


















import 'package:flutter/material.dart';

// class StateManagementDemo extends StatelessWidget {
//    int count = 0;
//   StateManagementDemo({Key? key}) : super(key: key);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('StateManagementDemo'),
//         elevation: 0,
//       ),
//       body: Center(
//           child: Chip(
//             label: Text('$count'),
//           ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//             count +=1;
//         },
//       ));
//   }
// }

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({Key? key}) : super(key: key);

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {


  @override
  Widget build(BuildContext context) {
    return CounterProviderDemo();
  }
}


class CounterProviderDemo extends StatefulWidget {
  const CounterProviderDemo({Key? key}) : super(key: key);

  @override
  State<CounterProviderDemo> createState() => _CounterProviderDemoState();
}

class _CounterProviderDemoState extends State<CounterProviderDemo> {

  int count = 0;

  _increaseCount() {
    setState(() {
      count +=1;
    });
  }


  @override
  Widget build(BuildContext context) {

    return CounterProvider(
      count: count,
      increaseCount: _increaseCount,
      child: Scaffold(
          appBar: AppBar(
            title: Text('StateManagementDemo'),
            elevation: 0,
          ),
          body: ConterWraper(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                count +=1;
              });
            },
          )
      ),
    );
  }
}




class ConterWraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}



class Counter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context)!.count;
    final VoidCallback increaseCount = CounterProvider.of(context)!.increaseCount;

    return ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}



class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;
  CounterProvider({
    required this.count,
    required this.increaseCount,
    required this.child
  }): super(child: child);


  static CounterProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: CounterProvider);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}
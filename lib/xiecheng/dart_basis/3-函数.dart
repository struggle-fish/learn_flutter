import 'package:flutter/material.dart';


class TestFunction {
  FunctionLearn functionLearn = FunctionLearn();
  void start() {
     // print(functionLearn.sum(1, 3));
    functionLearn.anonymousFunction();
  }
}

class FunctionLearn {
  // 方法的构成： 返回值类型 + 方法名 + 参数
  // 参数：
  int sum(int val1, int val2) {
    return val1 + val2;
  }

  // 私有方法
  _learn() {
    print('我是私有方法');
  }

  anonymousFunction() {
    var list = ['私有方法', '匿名方法'];
    list.forEach((i) {
      print(list.indexOf(i).toString() + ':' + i);
    });
  }


}
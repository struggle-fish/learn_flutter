import 'package:flutter/material.dart';


class OOPBasic extends StatefulWidget {
  const OOPBasic({Key? key}) : super(key: key);

  @override
  State<OOPBasic> createState() => _OOPBasicState();
}

class _OOPBasicState extends State<OOPBasic> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class Person {
  String name;
  int age;
  Person(this.name, this.age); // 初始化方法

  // 多态
  @override
  String toString() {
    return 'name: $name, age:$age';
  }
}

class Student extends Person {
  String? _school; // 下划线标识私有变量
  String? city;
  String? country;
  String name;


  // 标准的构造方法
  // this._school 初始私有参数
  Student(this._school, String name, int age, {
    this.city, // {} 内的就是可选参数
    this.country = '中国' // 默认参数
  }) : name = '$name.$country.$city', // 初始化列表
        super(name, age) {
    print('构造方法体不是必须的');
  } // 初始化列表


  // 命名构造方法
  Student.cover(Student stu, this.name) : super(name, stu.age) {
   print('命名构造方法');
  }



  /// 命名工厂  factory [类名 + . + 方法名]
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }

  String get school => _school!;

  set school (String value) {
    _school = value;
  }

  // 静态方法
  static doPrint (String str) {
    print('doPrint$str');
  }

  @override
  String toString() {
    // TODO: implement toString
    super.toString();
    return 'name:$name, school: ${this.school}, city:$city, country: $country, ${super.toString()}';
  }

}

// 工厂构造方法 - 单例模式
class Logger {
  final String name;

  static  Map<String, Logger> _cache = {};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
     return _cache[name]!;
    } else {
      final p = Logger._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  Logger._internal(this.name);

  log (String msg) {
    print(msg);
  }

}


// 抽象类 不能被实力化，可以有自己的方法
abstract class Study {
  void study(); // 抽象方法
}

class StudyFlutter extends Study {
  @override
  void study() {
    // TODO: implement study
    print('继承抽象类就得实现抽象类的方法');
  }

}

// 混入
class Test extends Person with Study {
  Test(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }

}

















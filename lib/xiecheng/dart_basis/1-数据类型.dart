import 'package:flutter/material.dart';

class DataType extends StatefulWidget {
   const DataType({Key? key}) : super(key: key);

   @override
   State<DataType> createState() => _DataTypeState();
 }

 class _DataTypeState extends State<DataType> {
   @override
   Widget build(BuildContext context) {
     _numType();
     _stringType();
     _boolType();
     _listType();
     _mapType();
     return Container();
   }

   // 数字类型
   void _numType() {
       num num1 = 1.0; // num 是数字类型的父类
       num num2 = 1;

       int num3 = 3; // 只能是整数

       double d1 = 1.68; // 双精度

      print('$num1, $num2, $num3, d1');
      num1.abs();  // 绝对值
      num1.toInt(); // 转化成 int
      num1.toDouble(); // 转化成 double

   }


   // 字符串
   void _stringType() {
     String str1 = '字符串';
     String str2 = '字符串拼接-$str1';

     print(str2);
     print(str1.substring(1));
   }

   // 布尔
   void _boolType() {
      bool success = true;
      bool fail = false;

      print(success);
      print(fail);


   }
     // 集合
   void _listType() {
     print('-----集合-----');
     List list1 = [1, 2, '哈哈哈'];
     print(list1);
     List<int> list2 = [1, 2];
     print(list2);


     List list3 = [];
     List list4 = [];
     list3.add(list1);
     print('list3: $list3');
     list4.addAll(list2);
     print('list4-$list4');

     /// 集合遍历
    for (int i = 0;  i <list1.length; i++) {
      print(list1[i]);
    }

  }

  // map
 _mapType() {
     print('map----集合');
     Map names = {
       'name': '小铜钱',
       'age': 19
     };
     print(names);

     Map ages = {};
     ages['小铜钱'] = 12;
     ages['哈哈哈'] = 13;
     print(ages);

    // 遍历方式：for  forEach  map
 }




}

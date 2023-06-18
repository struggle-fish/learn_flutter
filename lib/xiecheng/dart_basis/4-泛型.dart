import 'package:learn_flutter/xiecheng/dart_basis/2-%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1.dart';

class TestGeneric {
  void start() {
    Cache<String>  cache1 = Cache();
    cache1.setItem('c1', 'ch1');

    String? str1 = cache1.getItem('c1');
    print(str1);

    /// -------------------------------------
    Cache<int> cache2 = Cache();
    cache2.setItem('c12', 3);

    int? int2 = cache2.getItem('c12');
    print(int2);

    /// -------------------------------------
    
    Member<Student> member = Member(Student('', '', 12));
    print(member.fixedName());
  }
}


// 泛型类
class Cache<T> {
  final Map<String, T> _cached = Map();

  void setItem(String key, T val) {
    _cached[key] = val;
  }

  T? getItem(String key) {
    return _cached[key];
  }
}


class Member <T extends Person> {
  T _person;

  // 泛型作用： 约束参数类型
  Member(this._person);

  String fixedName() {
    return 'fixed ${_person.name}';
  }
}
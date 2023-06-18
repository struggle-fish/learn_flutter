/// 面向对象的技巧
/// 封装，继承 多态
/// 善于封装
/// 不要在一个方法体里放太多代码
void main() {
  List? list;
  /// ?. 安全调用
  print(list?.length);
  /// 设置默认值  ??
  print(list?.length ?? -1);
  ///
  list = [];
  list.add(0);
  list.add('');
  list.add(null);
  if (list[0] == null || list[0] == '' || list[0] == 0) {
    print('空的');
  }

  if ([null, '', 0].contains(list[0])) {
    print('这么写跟上面的一样效果');
  }

}
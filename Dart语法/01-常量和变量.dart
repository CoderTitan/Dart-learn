main() {
  print('常量和变量');

  print('-----------变量---------');

  // 弱类型
  // 1. 声明变量, 不赋初始值
  var a;
  a = 'titanjun';
  a = 123;
  a = false;
  print(a);
  // 在不初始化的前提下, 变量可以赋值任何类型的值


  // 2. 声明变量, 赋初始值
  var b = 'titanjun.top';
  // 变量在有初始化值得情况下, 只能赋值相同类型的值, 否则报错
  // b = 123;


  // 3. dynamic 声明
  dynamic c = 'titannjun';
  c = 123;
  c = false;
  print(c);
  // 调用未声明的方法, 不会报错, 运行时报错
  // c.test();


  // 4. Object
  Object d = 'titanjun';
  d = 123;
  d = false;
  // 调用未声明的方法, 会直接报错
  // d.test();



  // 强类型
  // 1. 明确指定变量的类型
  String str = 'titanjun';
  bool isStr = true;
  num number = 1234;



  // 2. 一起对象的初始值都是null, 即便是数字也是null
  bool isNum;
  String str2;
  StringBuffer str3;
  num num1;
  print([isNum, str2, str3, num1]);
  // [null, null, null, null]



  print('-----------常量---------');

  // 1. 定义
  // 类型声明可以省略
  final String a1 = 'ducafecat';
  final b1 = 'ducafecat';

  const String a2 = 'ducafecat';
  const b2 = 'ducafecat';


  // 初始后不能再赋值, 否则报错
  final a3 = 'ducafecat';
//  a3 = 'abc';

  const a4 = 'ducafecat';
//  a4 = 'abc';


  // 不能和 var 同时使用, 否则报错
//  final var a5 = 'ducafecat';
//  const var a6 = 'ducafecat';


  // 2. final和const的区别
  // 2-1. 需要确定值

  // final是运行时的时候判断, const是赋值时进行判断
  final time1 = DateTime.now();
  // const修饰的常量会报错
//  const time2 = DateTime.now();


  // 2-2.不可变性可传递
  final List ls = [11, 22, 33];
  // final修饰的数组可以改变元素值
  ls[1] = 44;

  const List ls1 = [11, 22, 33];
  // const修饰的数组不可以改变元素值, 运行时报错
//  ls1[1] = 44;

  // 2-3. 内存中重复创建
  final arr1 = [11 , 22];
  final arr2 = [11 , 22];
  // 判断是否是相同内存
  print(identical(arr1, arr2));  // false

  // const修饰的常量, 在内存中不会重复创建相同的常量
  const ls3 = [11 , 22];
  const ls4 = [11 , 22];
  print(identical(ls3, ls4));  // true

}
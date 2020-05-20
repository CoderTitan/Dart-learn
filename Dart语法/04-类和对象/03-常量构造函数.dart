
// 普通构造函数
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

// 初始化列表
class Size {
  final double width;
  final double height;
  final double area;

  // 多个属性使用逗号分隔
  Size(double width, double height): 
    this.width = width,
    this.height = height,
    this.area = width * height;
}


// 常量构造方法
class Teacher {
  final String name;

  const Teacher(this.name);
}

main(List<String> args) {
  var p1 = Person("name", 10);
  var p2 = Person("name", 10);
  // 判断两个对象是不是同一个
  print(identical(p1, p2));

  // 初始化列表
  var s1 = Size(10, 20);
  var s2 = Size(10, 20);
  // 判断两个对象是不是同一个
  print(identical(s1, s2));


  // 常量构造方法
  var t1 = const Teacher("name");
  var t2 = const Teacher("name");
  print(identical(t1, t2));

  const t3 = Teacher("name");
  const t4 = Teacher("name");
  print(identical(t3, t4));
  print(identical(t1, t4));
}
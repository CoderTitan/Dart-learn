

// 重定向构造方法


class Point {
  String name;
  int age;

  Point(this.name, this.age);

  Point.fromName(String name): this(name, 0);
}

main(List<String> args) {
  var point = Point.fromName("name");
  print(point.age);
}



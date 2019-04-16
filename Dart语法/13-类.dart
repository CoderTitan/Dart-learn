main() {

  // 初始化类
  var point = new Point();
  print(point);


  var point1 = Point1(1, 3);
  print(point1.x);


  var point2 = Point2(2, 4);
  print(point2.z);

  var point3 = Point3.mapJson({'x': 12, 'y': 90});
  print(point3.x);

  var point4 = Point4();
  print(point4);
}


// 创建类
// 未指明父类的时候, 默认继承自Object
class Point {
  // 定义变量
  num x;
  num y;
  num z;

}


// 使用构造函数
class Point1 {
  // 定义变量
  num x;
  num y;

  // 构造函数
  Point1(x, y) {
    this.x = x;
    this.y = y;
  }

  // 也可以直接使用下面方式
//  Point1(this.x, this.y);
}


// 对参数值进行操作
class Point2 {
  // 定义变量
  num x;
  num y;
  num z;

  Point2(this.x, this.y): z = x + y;
}


// 命名构造函数
class Point3 {
  // 定义变量
  num x;
  num y;

  Point3.mapJson(Map json) {
    this.x = json['x'];
    this.y = json['y'];
  }
}


// 必须被初始化的变量
class Point4 {
  final num x;
  final num y;

  Point4() {

  }
}


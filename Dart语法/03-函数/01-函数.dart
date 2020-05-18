
// 入口函数
main() {
  //每个应用都需要有个顶级的 main() 入口方法才能执行。 main() 方法的返回值为 void 并且有个可选的 List<String> 参数

  print('---------函数-------------');


  // 函数定义
  // 首先，函数也是对象，当没有指定返回值的时候，函数返回null



  print(addNumber(5));

  print(addNum(4));

  print(addNum1(3));

  print(sayHello('titan'));

  // 可选参数
  print(add(3, 3));
  print(add(4));


  // 命名可选参数
  print(funcAdd(2, y: 12, z: 12));
  print(funcAdd1(3));

  // 位置可选参数. 调用的时候参数值会依次按顺序赋值
  print(funcAdd3(13, 12, 13));
  print(funcAdd3(1, 12, 2));

}

// 有返回值, 有实参
int addNumber(int x) {
  return x + x;
}

// Dart中的类型是可选的, 可不写, 不过不建议这样的写法
addNum(x) {
  return x + x;
}

// 函数只是简单的返回一个表达式的值，可以使用箭头语法 =>expr;
int addNum1(int x) => x + x;

// 匿名函数的写法
var sayHello = (name) => 'Hello $name!';


// 可选参数
 int add(int x, [int y, int z]) {
   if (y == null) {
     y = 1;
   }
   if (z == null) {
     z = 1;
   }
   return x + y + z;
 }


// 命名可选参数使用大括号{}，默认值用冒号:
// 参数可指定0个或者多个, 最多不超过声明的参数个数
// 与参数的顺序无关, 在调用的时候需要指明参数名
int funcAdd(int x, {int y, int z}) {
  if (y == null) {
    y = 0;
  }
  if (z == null) {
    z = 0;
  }
  return x + y + z;
}

// 命名可选参数默认值, 使用:, 或者=
int funcAdd1(int x, {int y = 1, int z = 2}) {
  if (y == null) {
    y = 0;
  }
  if (z == null) {
    z = 0;
  }
  return x + y + z;
}

int funcAdd2(int x, {int y: 1, int z: 2}) {
  if (y == null) {
    y = 0;
  }
  if (z == null) {
    z = 0;
  }
  return x + y + z;
}


// 位置可选参数使用方括号[]，默认值用等号=
int funcAdd3(int x, [int y, int z = 2]) {
  if (y == null) {
    y = 0;
  }
  if (z == null) {
    z = 0;
  }
  return x + y + z;
}

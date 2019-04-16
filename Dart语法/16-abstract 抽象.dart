
main() {

  // 不能直接调用People类
//  var people = People();

  // 继承方式使用
  var teacher = Teacher();
  teacher.printName();


  var s = Student();
  s.printName();

}


// 抽象类abstract修饰
abstract class People {
  static String name = 'titanjun';

  void printName() {
    print('titanjun');
  }
}

// 抽象类 继承方式使用
class Teacher extends People {

}


// 抽象类 api方式使用
class Student implements People {
  // 必须实现改方法
  void printName() {
    print('top');
  }
}


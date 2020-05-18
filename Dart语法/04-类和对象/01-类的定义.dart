
/**
 * 类的定义
 * 格式:
 * class 类名 {
 *  类型 成员变量
 *  返回值类型 方法名(参数列表) {
 *    方法体
 *  }
 * }
 */




/** 1. 创建一个类
 * 我们在方法中使用属性(成员/实例变量)时，并没有加this；
 * Dart的开发风格中，在方法中通常使用属性时，会省略this，但是有命名冲突时，this不能省略；
 */
class Person {
  String name;
  void eat() {
    print('${name}');
  }
}


// 2. 构造方法
/**
 *  普通构造方法
 * 当通过类创建一个对象的时候, 会调用这个类的构造方法
 * 当类中没有明确指定构造方法时, 默认会有一个无参的构造方法
 * 我们也可以根据自己的需求自己创建一个构造方法
 * 当我们创建了自己的构造方法时, 默认的构造方法将会失效, 不能被调用
 * 当然如果我们下一个明确的构造方法, 但是会和我们自定义的构造方法冲突, 因为Dart本身不支持函数的重载(方法名相同,参数不同)
 */



class Student {
  String name;
  int age;

  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }

  @override
  String toString() {
    return 'name = $name, age = $age';
  }
}

// 为了简化构造函数的赋值操作, Dart提供了一种语法糖
class Student1 {
  String name;
  int age;

  // 这里和上面的Studeng的构造方法等价
  Student1(this.name, this.age);

  @override
  String toString() {
    return 'name = $name, age = $age';
  }
}


/**
 * 3. 命名构造方法
 */

class Model {
  String name;
  int age;

  Model(this.name, this.age);

  // 命名构造方法
  Model.withNameAndAge(String name, int age) {
    this.name = name;
    this.age = age;
  }
  // 命名构造方法
  Model.initJson(Map<String, Object> map) {
    this.name = map['name'];
    this.age = map['age'];
  }
}

/**
 * 4. 初始化列表
 */

class Teacher {
  final String name;
  final int age;

  /**
   * 在Dart中在执行下面{}中的代码的时候, 表示Teacher对象已经初始化完毕了
   * 所以在执行{}之前, 必须保证name和age呗初始化了, 而且final修饰的属性是不可呗重新赋值的, 所以才会报错
    Teacher(String name, int age) {
      this.name = name;
    }
  */
  
  
  // 这里可以使用初始化列表的形式, 初始化final属性
  Teacher(String name, {int age = 10}): this.name = name ?? 'jun', this.age = age;
}

class Size {
  final double width;
  final double height;
  final double area;

  Size(double width, double height): 
    this.width = width ?? 1,
    this.height = height ?? 1,
    this.area = width * height;
}



// main函数入口
main(List<String> args) {
  
  // 1. 类的创建
  var person = Person();
  person.name = 'titanjun';
  person.eat();

  // 2. 普通构造方法
  var stu = Student('titan', 24);
  print(stu);

  // 3. 命名构造方法
  // 普通构造方法
  var model0 = Model('name', 12);
  // 命名构造方法
  var model1 = Model.withNameAndAge('titan', 12);
  var model2 = Model.initJson({'name': 'jun', 'age': 18});
  print(model1);
}

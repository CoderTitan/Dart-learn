

abstract class Woman {
  void eat();

  void student() {
    print("student");
  }
}

class Man {
  void run() {
    print("runner");
  }
}

class Person {
  void drinking() {
    print("drinking--person");
  }
}

class Student extends Person implements Woman, Man {
  @override
  void eat() {
    print("eat");
  }

  @override
  void student() {
    print("student--student");
  }

  @override
  void run() {
    // 这里不能调用super方法
    // super.run(); 
    print("run");
  }

  // 通过继承的方法
  @override
  void drinking() {
    super.drinking();
    print("dringking--stu");
  }
}

main(List<String> args) {
  var stu = Student();
  stu.eat();
  stu.run();
  stu.student();
}
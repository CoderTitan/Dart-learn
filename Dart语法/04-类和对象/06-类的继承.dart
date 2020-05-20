
class People {
  String name;

  People(this.name);

  void eat() {
    print('people -- eat');
  }
}

class Person extends People {
  int age;

  Person(String name, int age): this.age = age, super(name);

  @override
  void eat() {
    // 这里的super, 看个人需求是否调用
    super.eat();
    print('Person -- eat');
  }
}

main(List<String> args) {
  var people = People('name');
  people.eat();

  var person = Person("top", 10);
  person.eat();
}
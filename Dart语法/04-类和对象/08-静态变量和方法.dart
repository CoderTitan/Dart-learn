



main() {
 var person = Person();
 print(person.firstName);
 person.hide();

 print(Person.lastName);
 Person.show();
}


class Person {

  String firstName = 'top';
  // 不能使用this调用静态属性
  static String lastName = 'titanjun';


  void hide() {
    print('titanjun');
  }

  // 静态方法
  static void show() {
    print('https://www.$lastName.top');
  }
}
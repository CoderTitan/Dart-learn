

main() {

  //使用类名调用
  print(Dog.name);
  // 静态方法使用类名调用
  Dog.show();
}


class Dog {

  // 静态属性
  // 不能使用this调用静态属性
  static String name = 'titanjun';


  // 静态方法
  static void show() {
    print('https://www.$name.top');
  }

}
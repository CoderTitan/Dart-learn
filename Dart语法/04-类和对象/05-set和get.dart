main() {
  var people = People('top');
  people.setName = 'top';
  print(people.getName);
  print(people.name);

  var person = Person('titan');
  person.setName = 'jun';
  print(person.getName);
}


class People {
  String name;

  set setName(String value) {
    this.name = value;
  }

  String get getName {
    return 'titanjun';
  }

  People(this.name);
}


class Person {
  String name;

  // setter
  set setName(String value) => this.name = value;
  // getter
  String get getName => 'titanjun';

  Person(this.name);
}
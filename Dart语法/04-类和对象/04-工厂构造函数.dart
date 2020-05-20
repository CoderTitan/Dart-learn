

main(List<String> args) {
  
  var p1 = Person.fromName("titan");
  var p2 = Person.fromName("titan");
  print(identical(p1, p2)); // true
}

class Person {
  String name;

  static final Map<String, Person> _cache = <String, Person>{};

  factory Person.fromName(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = Person(name);
      _cache[name] = p;
      return p;
    }
  }

  Person(this.name);
}
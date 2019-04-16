main() {

  var people = People();
  people.pName = 'top';
  print(people.pName);
  print(people._name);



}


class People {
  String _name;

  set pName(String value) {
    _name = value;
  }

  String get pName {
    return 'titanjun';
  }

}
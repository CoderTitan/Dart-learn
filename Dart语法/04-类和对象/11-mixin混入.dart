

mixin Runner {
  run() {
    print('在奔跑');
  }
}

mixin Flyer {
  fly() {
    print('在飞翔');
  }
}

class Bird with Runner, Flyer {  }

main(List<String> args) {
  var bird = Bird();
  bird.run();
  bird.fly();
}
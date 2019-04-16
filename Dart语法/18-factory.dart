void main() {
  var xm = phoneFactory('ios');
  xm.startup();
  xm.shutdown();
}

class Phone {
  void startup() {
    print('开机');
  }
  void shutdown() {
    print('关机');
  }
}

Phone phoneFactory(String name) {
  switch (name) {
    case 'android':
      return new AndroidPhone();
      break;
    default:
      return new IOSPhone();
  }
}

class AndroidPhone extends Phone {
  void startup() {
    super.startup();
    print('Android Phone 开机');
  }
}

class IOSPhone extends Phone {
  void startup() {
    super.startup();
    print('IOS Phone 开机');
  }
}


/**
* 工厂构造函数

void main() {
  var xm = Phone('android');
  xm.startup();
  xm.shutdown();
}

abstract class Phone {
  factory Phone(String name) {
    switch (name) {
      case 'android':
        return new AndroidPhone();
        break;
      default:
        return new IOSPhone();
    }
  }
  void startup();
  void shutdown();
}

class AndroidPhone implements Phone {
  void startup() {
    print('Android Phone 开机');
  }
  void shutdown() {
    print('Android 关机');
  }
}

class IOSPhone implements Phone {
  void startup() {
    print('IOS Phone 开机');
  }
  void shutdown() {
    print('IOS 关机');
  }
}

*/


/**
 * 372822195506292718
 * 372822195807012724
 * */
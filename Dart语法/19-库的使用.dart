

// 引入库的方式
import 'dart:io';



main() {

  // 建立一个文件对象
  var file = new File('17-interface.dart');
  var content = file.readAsStringSync();
  print(content);
}


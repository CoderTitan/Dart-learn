main() {
  // 创建一个Map实例, 插入顺序进行排列
  var dic = new Map();
  print(dic);  // {}

// 根据一个Map创建一个新的Map, 插入顺序进行排列
  var dic1 = new Map.from({'name': 'titan'});
  print(dic1);  // {name: titan}

// 根据List创建Map, 插入顺序进行排列
  List<int> list = [1, 2, 3];
// 使用默认方式, key和value都是数组对应的元素
  var dic2 = new Map.fromIterable(list);
  print(dic2);  // {1: 1, 2: 2, 3: 3}
// 设置key和value的值
  var dic3 = new Map.fromIterable(list, key: (item) => item.toString(), value: (item) => item * item);
  print(dic3);  // {1: 1, 2: 4, 3: 9}

// 两个数组映射一个字典, 插入顺序进行排列
  List<String> keys = ['name', 'age'];
  var values = ['jun', 20];
// 如果有相同的key值, 后面的值会覆盖前面的值
  var dic4 = new Map.fromIterables(keys, values);
  print(dic4);  // {name: jun, age: 20}

// 创建一个空的Map, Map允许null作为key
  var dic5 = new Map.identity();
  print(dic5);  //{}

// 创建一个不可修改、基于哈希值的Map
  var dic6 = new Map.unmodifiable({'name': 'titan'});
  print(dic6);


  var map1 = {'name': 'titan', 'age': 20};
// 哈希值
  print(map1.hashCode);

// 运行时类型
  print(map1.runtimeType);  //_InternalLinkedHashMap<String, Object>

// 是否为空, null不能判断, 会报错
  print(map1.isEmpty);  // false

// 是否不为空
  print(map1.isNotEmpty);  // true

// 键值对个数
  print(map1.length);   // 2

// 所有的key值, 返回Iterable<K>类型
  print(map1.keys.toList());  // [name, age]

// 所有的value值, 返回Iterable<K>类型
  print(map1.values.toList());   // [titan, 20]

// 根据key取值
  print(map1['name'] ?? '');   // titan

// 根据key赋值
  map1['age'] = 30;
  print(map1);   // {name: titan, age: 30}


  var map2 = {'name': 'titan', 'age': 20};

// 添加一个map
  map2.addAll({'blog': 'titanjun'});
  print(map2);
// {name: titan, age: 20, blog: titanjun}

// 判断是否包含指定的key
  print(map2.containsKey('age'));  //

// 判断是否包含指定的value
  print(map2.containsValue('titan'));

// 操作每个键值对
  map2.forEach((key, value) {
    print('key = $key, value = $value');
  });

// 查找key对应的value，或添加一个新的值为key.length的value
  for (var key in ['name', 'age', 'king']) {
    // 函数的返回值为查找到的对应的value值
    print(map2.putIfAbsent(key, () => key.length));
  }
  print(map2);
// {name: titan, age: 20, blog: titanjun, king: 4}

// 转成字符串
  print(map2.toString());

// 删除键值对, 返回删除key对应的value值, 没有则返回null
  print(map2.remove('blog'));  //titanjun
  print(map2.remove('coder'));  //null
  print(map2);

// 删除所有的键值对
  map2.clear();
  print(map2);  //{}
}
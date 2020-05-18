main() {
  var l1 = new List(3);  //[null, null, null]
  print(l1.length);  //3

// 下面这种写法会报错
  // l1.length = 1;

  // 这两种方式一样
  var l10 = new List();
  var l11 = [];

// 都是可行的
  l10.length = 3;
  l10.add(1);

  // 当使用指定长度创建一个可增长的List时，仅仅在刚创建后分配长度
  List growableList = new List()..length = 500;


  var l2 = new List.filled(3, 'l');  //[l, l, l]
  var l3 = new List.filled(2, []);   // [[], []]
  l3[0].add(12);
  print(l3);      // [[12], [12]]


  var l5 = new List.from([1, 2, 3, 4]);
  l5.add(5);
  print(l5);   // [1, 2, 3, 4, 5]

// 下面的add方法会报错
  var l51 = new List.from([1, 2, 3, 4], growable: false);
  l5.add(51);


  // 相关属性
  var arr1 = [1, 2, 3, 4];
// 数组的第一个和最后一个元素
  print(arr1.first);  // 1
  print(arr1.last);   // 4

// 判断数组是否为空
  print(arr1.isNotEmpty);  // true
  print(arr1.isEmpty);     // false

// 数组长度, 元素个数
  print(arr1.length);  // 4

// 倒序返回List
  print(arr1.reversed);  // [4, 3, 2, 1]

// 返回Iterator，被允许迭代Iterable的所有元素
  print(arr1.iterator);

// 对象的运行时类型
  print(arr1.runtimeType);   // List<int>

// 获取对象的哈希值
  print(arr1.hashCode);

// 根据索引获取元素
  print(arr1[2]);

// 根据索引修改元素
  arr1[1] = 11;
  print(arr1);



  // 相关方法
  // 添加元素
  arr1.add(5);

// 添加一个数组
  arr1.addAll([10, 12]);


  var arr2 = ['one', 'two', 'three', 'one', 'four'];

// 是否包含某元素
  print(arr2.contains('one'));  // true
// 判断数组是否有满足条件的元素
  print(arr2.any((item) => item.length > 4));  // true
// 判断数组是否所有元素都满足条件
  print(arr2.every((item) => item.length > 4));  // false

// 转化为Map类型, 索引作为Key值，对应的元素作为Value
  print(arr2.asMap());  // {0: one, 1: two, 2: three, 3: one, 4: four}

//随机打乱List中的元素
  arr2.shuffle();

// 通过索引获取元素, 等价于arr2[3]
  print(arr2.elementAt(3));

// 获取元素对应的索引值, 默认从索引0开始
  print(arr2.indexOf('one'));  // 0
// 从第2个索引开始查找
  print(arr2.indexOf('one', 2));  // 3
// 如果找不到, 返回-1
  print(arr2.indexOf('five'));  // -1

// 获取元素对应的索引值, 从后往前找
  print(arr2.lastIndexOf('one'));
  print(arr2.lastIndexOf('one', 3));
  print(arr2.lastIndexOf('five'));

// 返回满足条件的第一个元素
//  print(arr3.firstWhere((item) => item == 'one'));

// 查找符合条件的元素, 如果有且仅有一个符合条件的元素, 则返回该元素
// 如果没有匹配到元素，或匹配到多个元素, 则会抛出异常
  print(arr2.singleWhere((item) => item.length == 5));  //three

// 返回除了最初的count个元素外的所有元素
  arr2 = ['one', 'two', 'three', 'four'];
  print(arr2.skip(2)); // (three, four)

// 返回所有不符合该条件的元素
  print(arr2.skipWhile((item) => item.length == 3));  //(three, four)

// 返回一个新的List，包含从start（包括）到end（不包括）的对象, 原数组不变
  print(arr2.sublist(1, 3));
// 不指定end, 默认到数组结尾
  print(arr2.sublist(2));

// 获取某一区间的元素, 返回一个数组
  print(arr2.getRange(1, 3));    // ['two', 'three']

// 数组拼接成字符串
  print(arr2.join());  //onetwothreefour
  print(arr2.join('-'));  //one-two-three-four

// 返回数组最初的count个元素
  print(arr2.take(2));
// 返回数组符合条件的元素, 直到条件值为false停止过滤
  arr2 = ['one', 'two', 'three', 'four', 'ten'];
  print(arr2.takeWhile((item) => item.length == 3));  //(one, two)


  // 删除
// 删除指定的元素
// 如果有该元素, 返回true
  print(arr2.remove('two'));  // true
  print(arr2);   // [one, three, one, four]
// 如果没有该元素, 返回false
  print(arr2.remove('five'));  // false

// 根据索引删除, 返回被删除的元素值
  print(arr2.removeAt(1));  // three
  print(arr2);   // [one, one, four]

// 删除最后一个元素, 返回该元素值
  print(arr2.removeLast());  // four
  print(arr2); // [one, one]

// 删除一个区间的元素, 含左不含右[start, end)
  arr2.addAll(['six', 'seven', 'eight']);
  arr2.removeRange(1, 3);
  print(arr2);  // [one, seven, eight]

// 删除所有符合条件的元素
  arr2.removeWhere((item) => item.length == 3);
  print(arr2);  // [seven, eight]

//删除List中所有不满足条件的元素
  arr2.retainWhere((item) => item.length > 3);
  print(arr2);

// 删除所有的元素
  arr1.clear();
  print(arr1);  // []


  // 插入
  var arr3 = [1, 3, 4];
// 在某处插入元素
  arr3.insert(1, 10);
  print(arr3); //[1, 10, 3, 4]

// 插入一个数组
  arr3.insertAll(2, [12, 32]);
  print(arr3);



//  var arr2 = ['one', 'two', 'three', 'four'];

// 过滤操作, 返回所有符合条件的元素
  print(arr2.where((item) => item.length == 3));  //(one, two, ten)

// 映射一个新的数组, 参数是一个函数
  var array = arr2.map((item) {
    return item + '-';
  });
  print(array.toList());  // [one-, ten-, two-, four-, three-]

// 排序, 默认从小到大
  arr2.sort();
  print(arr2);  //[four, one, ten, three, two]
// 设置条件进行排序
  arr2.sort((item1, item2) {
    // 如果两个比较的结果为0, 那么排序后返回的结果可能不同
    return item1.length.compareTo(item2.length);
  });
  print(arr2);  //[one, ten, two, four, three]

// 迭代计算, initialValue: 初始值, combine: 计算函数
  var arr4 = [1, 2, 3, 4];
// 设置初始值
  var result1 = arr4.fold(10, (prev, value) => prev + value);  //20
  var result2 = arr4.fold(2, (prev, value) => prev * value);  //48
// 初始值即为第一个元素的值, 可迭代对象至少要有一个元素。 如果它只有一个元素，则元素直接返回
  var result3 = arr4.reduce((value, element) => value * element);  // 24

// 对每一个元素进行操作
  arr2.forEach((item) {
    print(item);
  });

// expand, 以对每个元素调用f函数后生成的元素，按迭代的顺序，返回新的Iterable
  var pairs = [[1, 2], [3, 4]];
  var flattened = pairs.expand((pair) => pair).toList();
  print(flattened); // => [1, 2, 3, 4];

  var input = [1, 2, 3];
  var duplicated = input.expand((i) => [i, i]).toList();
  print(duplicated); // => [1, 1, 2, 2, 3, 3]

}
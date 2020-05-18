main() {
  // 按顺序访问的值或元素的集合, List集合也是继承于Iterable

  // 创建空的可迭代对象
  var ite = Iterable.empty();
  print(ite);   // ()

// 创建一个Iterable，通过序列来动态生成元素
  var ite1 = Iterable.generate(5);
  print(ite1);  // (0, 1, 2, 3, 4)


}
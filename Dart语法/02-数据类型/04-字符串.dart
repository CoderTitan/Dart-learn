main() {
  // 1. 字符串的声明
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
// 单引号里面有单引号(双引号里面有双引号)时, 必须使用反斜\杠转义
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";


  // 2. 字符串的拼接
  // 直接把相邻字符串写在一起，就可以连接字符串了
  var string = 'name''+''age';
  // 用+把相邻字符串连接起来
  var string1 = 'name' + '+' + 'age';


  // 3. 在Dart中使用$符号引用变量或者表达式
  const num1 = 12;
  // 引用表达式
  const ageStr0 = 'age = $num1';
  const ageStr1 = 'age = ${num1} is my age';
  // 引用表达式
  const ageStr2 = 'age = ${num1 * num1}';


  // 4. 多行字符串
  const line1 = '''
    道路千万条，安全第一条，
    行车不规范，亲人两行泪
  ''';
  const line2 = """
    道路千万条，安全第一条，
    行车不规范，亲人两行泪
  """;


  // 5. 字符串的相关属性
  const string0 = 'https://www.titanjun.top/';

  // 可根据索引获取字符串的每一个字符
  print(string0[1]);

  // 字符串是否是空的
  print(string0.isEmpty);
  print(''.isEmpty); // true
  // 字符串是否不是空的
  print(string0.isNotEmpty);
  print(''.isNotEmpty);  // false

  // 返回字符串Unicode代码的可迭代对象
  print(string0.runes);
  // 返回字符串的UTF-16代码单元列表
  print(string0.codeUnits);
  // 返回根据代码单元生成的哈希码
  print(string0.hashCode);
  // 字符串的长度
  print(string0.length);
  // 返回对象运行时的类型
  print(string0.runtimeType);  // String


  // 6. 字符串的相关方法

  // 字符串比较
  print('titan'.compareTo('jun'));

  // 大小写转换
  print(string0.toUpperCase());
  print(string0.toLowerCase());

  // 截取字符串(开头索引和结尾索引)
  print(string0.substring(0, 5)); // https
  // 只有开头索引, 默认截取到最后
  print(string0.substring(12));  // titanjun.top/

  // 拆分字符串
  print(string0.split('.'));  // [https://www, titanjun, top/]
  print(string0.split(new RegExp(r"t")));  // [h, , ps://www., i, anjun., op/]

  // 去掉字符串里面的tab空格和换行符
  const string11 = '\t\ttitanjun top\n';
  print(string11.trim());
  // 去掉字符串开头的tab空格和换行符
  print(string11.trimLeft());
  // 去掉字符串结尾的tab空格和换行符
  print(string11.trimRight());


  // 判断字符串是否以某字符(字符串)结尾, 参数不接受正则表达式
  const str1 = 'titanjun.top';
  print(str1.endsWith('p'));  //true
  print(str1.endsWith('/'));  //false
  print(str1.endsWith('top'));  //true


  // 判断字符串是否以某字符(字符串)开头, 参数接受正则表达式
  print(str1.startsWith('h'));  //false
  print(str1.startsWith('tit')); //true
  print(str1.startsWith('it', 1)); //true
  print(str1.startsWith(RegExp(r'[A-Z][a-z]'), 1)); //false


  // 根据指定的字符(字符串)获取其在原字符串中第一次出现的索引值, 顺序是从左到右
  const str2 = 'https://www.titanjun.top/';
  print(str2.indexOf('titan')); // 12
  print(str2.indexOf('t', 5));  // 12
  print(str2.indexOf(new RegExp(r'[a-z]'))); //0
  // 如果没有改字符, 则会输出-1
  print(str2.indexOf('ppp'));  // -1


  // 效果和indexOf一样, 不同点则是: indexOf的顺序是从左到右, lastIndexOf是从右到左
  print(str2.lastIndexOf('t', 20));  //14
  print(str2.indexOf(new RegExp(r'[a-z]'))); //0
  // 如果没有改字符, 则会输出-1
  print(str2.indexOf('ppp'));  // -1


  // 替换字符串
  const str4 = 'titanjun12--0123';
  print(str4.replaceFirst('t', 'T'));  // Titanjun12--0123
  print(str4.replaceFirst('12', '21', 10));   //titanjun12--0213

  // 全部替换
  print(str4.replaceAll('12', '21'));  //titanjun21--0213
  print(str4.replaceAll('t', 'T'));  //TiTanjun12--0123

  // 区间替换
  print(str4.replaceRange(0, 5, 'top'));  //topjun12--0123
}
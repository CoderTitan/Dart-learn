


abstract class Size {
  int width;
  int height;

  Size(this.width, this.height);

  void getSize();

  int getArea() {
    return this.width * this.height;
  }
}

class Area extends Size {
  @override
  void getSize() {
    print('width = $width, height = $height');
  }

  Area(int width, int height): super(width, height);
}

main(List<String> args) {
  // 实例化Size会报错: Abstract classes can't be instantiated
  // var size = Size(20, 2);
  var area = Area(10, 2);
  area.getArea();
  print(area.getArea());
}
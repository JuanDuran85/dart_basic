class GeometricFigure {
  int? base;
  int? hight;
  int? area;
  String type = '';

  factory GeometricFigure(int base, int hight) {
    if (base == hight) {
      return GeometricFigure.square(base);
    } else {
      return GeometricFigure.rectangle(base, hight);
    }
  }

  GeometricFigure.square(int base) {
    this.base = base;
    this.hight = base;
    this.area = base * base;
    this.type = 'square';
  }

  GeometricFigure.rectangle(int base, int hight) {
    this.base = base;
    this.hight = hight;
    this.area = base * hight;
    this.type = 'rectangle';
  }

  @override
  String toString() {
    return {
      'base': this.base,
      'hight': this.hight,
      'area': this.area,
      'type': this.type
    }.toString();
  }
}

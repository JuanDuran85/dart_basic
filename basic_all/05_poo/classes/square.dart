class Square {
  final int side;
  final int area;

// Error - bad constructor
  // Square(int side, int area) {
  //   this.side = side;
  //   this.area = area;
  // }

// This a good constructor - one way  
  //Square(this.side, this.area);

  Square(int side): this.side = side, this.area = side * side;
}
Cube cube;

void setup() {
  size(300, 225);

  cube = new Cube();
}

void draw() {
  background(#FFFFFF);
  cube.display();

  noLoop();
}

class Cube {
  float x, y, ts, ss;
  int[][] sides = {
    {5, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 2, 2, 2, 2, 2, 2, 2, 2}, 
    {2, 3, 3, 3, 3, 3, 3, 3, 3}, 
    {3, 4, 4, 4, 4, 4, 4, 4, 4}, 
    {4, 5, 5, 5, 5, 5, 5, 5, 5}
  };
  //                White     Red      Green   Blue      Yellow   Orange
  color[] colors = {#FFFFFF, #FF0000, #00FF00, #0000FF, #FFFF00, #FF8000
  };

  Cube() {
    this.ts = 25; // Tile size
    this.ss = this.ts * 3;
  }

  void display() {
    
    drawSide(0, this.ss, 0);
    drawSide(this.ss, this.ss, 1);
    drawSide(this.ss * 2, this.ss, 2);
    drawSide(this.ss * 3, this.ss, 3);
    drawSide(this.ss, 0, 4);
    drawSide(this.ss, this.ss * 2, 5);
    
  }

  void drawSide(float xx, float yy, int side) {
    for (int tile = 0; tile < 9; tile++) {
      float x = xx + this.ts * (tile % 3);
      float y = yy + this.ts * (tile / 3);

      fill(colors[this.sides[side][tile]]);
      rect(x, y, this.ts, this.ts);
    }
  }
}
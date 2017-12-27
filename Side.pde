class Side {
  //                White    Red      Green   Blue      Yellow   Orange
  color[] colors = {#FFFFFF, #FF0000, #00FF00, #00FFC8, #FFFF00, #FF8000};

  float x, y, ts, ss;
  int sideID;

  int[][] tiles = new int[3][3];
  Side(float x, float y, int sideID, float ts) {
    this.x = x;
    this.y = y;
    this.sideID = sideID;
    this.ts = ts;
    this.ss = ts * 3;

    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        if (row == 0 & col == 0 || row == 2 && col == 2) {
          tiles[row][col] = int(random(6));//this.sideID;
        } else {
          tiles[row][col] = this.sideID;
        }
      }
    }
  }

  void Rotate() {
    int[][] temp = new int[3][3];
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        temp[col][row] = tiles[col][2 - row];
        println("" + row + col + " => " + col + (2 - row));
      }
    }
    tiles = temp;
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        println(row * 3 + col, tiles[row][col], temp[row][col]);
      }
    }
  }

  void display() {
    for (int row = 0; row < 3; row++) {
      for (int col = 0; col < 3; col++) {
        fill(colors[tiles[row][col]]);
        float x = this.x + col * this.ts;
        float y = this.y + row * this.ts;
        rect(x, y, this.ts, this.ts);
      }
      fill(0);
      text(this.sideID, this.x, this.y);
    }
  }
}
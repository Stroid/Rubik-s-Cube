class Cube {
  int tileSize,sideSize;
  
  Side[] Sides = new Side[6];
  int[][] Pos = {{1, 1}, {2, 1}, {3, 1}, {0, 1}, {1, 0}, {1, 2}};
  
  Cube() {
    this.tileSize = 25;
    this.sideSize = this.tileSize * 3;
    
    for(int i = 0; i < 6; i++){
      Sides[i] = new Side(Pos[i][0] * sideSize, Pos[i][1] * sideSize, i, tileSize);
    }
    
  }
  
  void Rotate(int side){
    Sides[side].Rotate();
  }
  
  void display(){
    for(int i = 0; i < 6; i++){
      Sides[i].display();
    }
  }
  
}
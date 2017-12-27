Cube cube;

int count = 0;
void setup() {
  textAlign(LEFT, TOP);
  size(300, 225);

  cube = new Cube();
}

void draw() {
  background(#FFFFFF);
  cube.display();
  
  count++;
  if(count == 60){
    cube.Rotate(int(random(6)));
    
    count = 0;
  }
  
}
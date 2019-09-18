int r = 0;
int g = 0;
int b = 0;
color cursor =0;




void setup() {
  size(1000, 1000);
  background(255);
  fill(0);
  rect(0,0,50,50);
  rect(60,0,50,50);
  rect(0, 60, 50,50);
  rect(60, 60, 50,50);
  
}

void draw() {
  cursor = color(r,g,b);
  fill(cursor);
  if (mousePressed && mouseX>100 && mouseY>50) {
   
    ellipse(mouseX, mouseY, 50, 50);
  } 
  //red
  if(mousePressed && mouseX<50 && mouseY<50){
    r = r+2;  
  }
  
  if(mousePressed && mouseX<110 && mouseY<50 && mouseY>60){ 
    r = r-2;
  }

  fill(cursor);
  //green
  if(mousePressed && mouseX<50 && mouseY<110 && mouseY>50){
    r = g+2;  
  }
  
  if(mousePressed && mouseX<110 && mouseY<50 && mouseY>110){
    r = g-2;
  }

 
}

void keyPressed(){
  println(cursor);
}

//sets the variables, one for each RGB value 
int r = 0;
int g = 0;
int b = 0;
//sets variable of the color of the cursor 
color cursor =0;
//sets variable for size of cursor
int size = 50;

void setup() {
  size(1000, 1000);
  background(255);
}

void draw() {
  //sets the cursor value to be r and g and b
  cursor = color(r, g, b);

  noStroke();
  //makes the top row of rectangles for red value
  fill(r, 0, 0);
  rect(0, 0, 50, 50);
  rect(60, 0, 50, 50);
  
  //makes second row for green
  fill(0, g, 0);
  rect(0, 60, 50, 50);
  rect(60, 60, 50, 50);
  
  //makes next row for blue
  fill(0, 0, b);
  rect(0, 120, 50, 50);
  rect(60, 120, 50, 50); 
  
  //makes the buttons for resizing the cursor
  fill(0);
  rect(10, 300, 20, 20);
  rect(60, 290, 40, 40);
  
  //makes rectangle for the reset button
  rect(30, 400, 50, 50);
  
  //sample cursor
  fill(cursor);
  ellipse(55, 200, 50, 50);

  //if the mouse is pressed outside of the button area it will draw and ellipse 
  if (mousePressed && mouseX>140 && mouseY>50) {
    //the coordinates of the ellipse is set to the mouse coordinates, size is a variable that will be changed later
    ellipse(mouseX, mouseY, size, size);
  } 
  //if the mouse is pressed inside ofthe top left rectangle r will increase by 2
  if (mousePressed && mouseX<50 && mouseY<50) {
    r = r+2;
  }
  //if mouse is pressed in the next rectangle r will decrease by two 
  if (mousePressed && mouseX<110 && mouseY<50 && mouseX>60) { 
    r = r-2;
  }

  //if mouse is pressed on the middle left button g will increase
  if (mousePressed && mouseX<50 && mouseY<110 && mouseY>50) {
    g = g+2;
  }
  //if pressed in the middle right g will decrease
  if (mousePressed && mouseX<110 && mouseY<110 && mouseY>60 && mouseX>60) {
    g = g-2;
  }

  //if pressed in bottom left b will increase
  if (mousePressed && mouseX<50 && mouseY<170 && mouseY>110) {
    b = b+2;
  }
  //if pressed in bottom right b will decrease
  if (mousePressed && mouseX<110 && mouseY<170 && mouseY>110 && mouseX>60) {
    b = b-2;
  }
  //if the mosue is pressed on the reset button it will draw a white background
  if (mousePressed && mouseX>30 && mouseX<80 && mouseY<450 && mouseY>400) {
    background(255);
  }
  //if mouse is pressed in small rctangle the cursor will decrease in size by 1, careful if it goes to negative it will get bigger
  if (mousePressed && mouseX>10 && mouseX<30 && mouseY<320 && mouseY>300) {
    size = size - 1;
  }
  //if the mouse is pressed in the bigger rectangle the cursor will increase by one
  if (mousePressed && mouseX>60 && mouseX<100 && mouseY<330 && mouseY>290) {
    size = size + 1;
  }
}

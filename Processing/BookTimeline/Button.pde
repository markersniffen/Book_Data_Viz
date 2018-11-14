class Button {
  
  float x, y, w, h;
  String name;
  Boolean visible, hover, select;
  color col, textCol, tempCol;
  boolean mouseFire = false;
  
  
  Button(String name_, float x_, float y_, float w_, float h_, color col_, color textCol_) {
    name = name_;
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    col = col_;
    textCol = textCol_;
    tempCol = col;
    visible = true;
    select = false;
  }
  
  void display() {
    selected();
    //hover();
    fill(col);
    rectMode(CENTER);
    noStroke();
    rect(x, y, w, h);
    textAlign(CENTER, CENTER);
    textSize(h-4);
    fill(textCol);
    text(name, x, y);
  }
  
  void hover() {
    if ((x-(w/2)) < mouseX & (x+(w/2)) > mouseX & (y-(h/2)) < mouseY & (y+(h/2)) > mouseY) {
      col = color(255,0,0);
      hover = false;
    } else {
      col = tempCol;
      hover = true;
    }
  }
  
  void selectFlip() {
    if (select) {
      select = false;
    } else {
      select = true;
    }
  }
  
  void colFLip() {
    color temp = col;
    col = textCol;
    textCol = col;
  }
  
  void buttonPressed() {
    if ((x-(w/2)) < mouseX & (x+(w/2)) > mouseX & (y-(h/2)) < mouseY & (y+(h/2)) > mouseY) {
      selectFlip();
    }
  }
  
  void selected() {
    if (select) {
      col = color(0,255,0);
    } else {
      col = tempCol;
    }
  }
}

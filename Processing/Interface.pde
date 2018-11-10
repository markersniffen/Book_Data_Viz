class Interface {
  color colBG = color(0, 0, 0);
  color colBGinterface = color(50, 50, 50);
  color colInterface = color (255, 255, 255);
  color releasedFill = color(50, 50, 50);
  color hoverFill = color(80, 80, 80);
  color pressedFill = color(250, 0, 0);
  float margin = 100;
  float weightInterface = 1;
  String interfaceTitle = "WELCOME!";
  

  
  // FONTS
  PFont thinFont, lightFont, regularFont, boldFont;
  
  String thinFontFile = "C:\\Users\\markersniffen\\Google Drive\\Projects\\BookTimeline\\Fonts\\Roboto-Thin.ttf";
  String lightFontFile = "C:\\Users\\markersniffen\\Google Drive\\Projects\\BookTimeline\\Fonts\\Roboto-Light.ttf";
  String regularFontFile = "C:\\Users\\markersniffen\\Google Drive\\Projects\\BookTimeline\\Fonts\\Roboto-Regular.ttf";
  String boldFontFile = "C:\\Users\\markersniffen\\Google Drive\\Projects\\BookTimeline\\Fonts\\Roboto-Bold.ttf";
  
  PVector center;
  float left, top, right, bottom;
  
  float mouseDifLeft, mouseDifRight, mouseDifTop, mouseDifBottom;
  
  Interface(float margin_) {
    margin = margin_;
  }
  
  void loadTheFonts(){
    thinFont = createFont("Roboto Thin", 50);
    lightFont = createFont("Roboto Light", 50);
    regularFont = createFont("Roboto Regular", 50);
    boldFont = createFont("Roboto Bold", 50);
  }
  
  void initCenter() {
  center = new PVector(width/2, height/2);
  left = center.x - width/3;
  right = center.x + width/3;
  top = center.y - height/3;
  bottom = center.y + height/3;
  }    

  void updateCenter() {
  center.x = (left+right)/2;
  center.y = (top+bottom)/2;
  }
  
  void drawBackground() {
  background(colBG);
  }
  
  void drawHud() {
    strokeWeight(weightInterface);
    stroke(colInterface);
    fill(colBGinterface);
    rectMode(CORNER);
    // TOP RECT
    rect(0, 0, width, margin);
    // SIDES & BOTTOM
    rect(0, margin, margin, height-margin-margin);
    rect(width-margin, margin, width, height-margin-margin);
    rect(0, height-margin, width, height);
  
    fill(colInterface);
    textFont(boldFont);
    textAlign(CENTER, CENTER);
    textSize(margin*.5);
    text(interfaceTitle, width/2, margin/2);
}
  
  
  
  void drawTestDataBox() {
    noFill();
    stroke(50);
    strokeWeight(4);
    rectMode(CORNERS);
    rect(left, top, right, bottom);
    stroke(200);
    line(left, margin, left, height-margin);
    line(right, margin, right, height-margin);
    fill(colInterface);
  }
  
  void drawData(float x_, float y_, float scale_, float col_) {
    // AXIS //
    // X
    float x = map(x_, 
    
    
    
  }
  
  void calcMouseDif() {
    mouseDifLeft = left - mouseX;
    mouseDifRight = right - mouseX;
    mouseDifTop = top - mouseY;
    mouseDifBottom = bottom - mouseY;
  }
  
  void calcMouseDrag() {
    left = mouseX + mouseDifLeft;
    right = mouseX + mouseDifRight;
    top = mouseY + mouseDifTop;
    bottom = mouseY + mouseDifBottom;
  }
  
  void scaleVertical() {
    float topDist = (mouseY - top);
    float bottomDist = (mouseY - bottom);
    top += scroll * (topDist * .01);
    bottom += scroll * (bottomDist *.01);
  }
  
  void scaleHorizontal() {
    float leftDist = (mouseX - left); // distance from mouse to left edge of timeline
    float rightDist = (mouseX - right);  // distance from mouse to right edge of timeline
    left += scroll * (leftDist * .01);
    right += scroll * (rightDist * .01);
  }
  
  
  
  
  
  
  void quit() {
    println("QUITTING...");
    exit();
  }
  
  void spin() { 
    println("SPINNING...");
  }
  
  void test() {
    println("TESTING...");
  }
  
  
  void load() {
    println("LOADING...");
  }
  
  
}

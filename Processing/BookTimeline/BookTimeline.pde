// CLASSES //
Interface myInterface;
Data myData;

String filename = "..\\..\\Database\\books_Mark Sniffen.csv";

boolean mouseLock;
float scroll;
int  scrollMult;
boolean keyShift = false;

void settings() {
  size(1920, 1080);
}

void setup() {
  myInterface = new Interface(100);
  myInterface.loadTheFonts();
  myInterface.initCenter();
  
  myData = new Data();
  myData.loadData("Mark's Data!", filename);
  myData.addDatapoints();
  myData.printDatapoints();

}

void draw() {
  myInterface.updateCenter();
  myInterface.drawBackground();
  myInterface.drawTestDataBox();



  myInterface.drawHud();
}





// INPUT STUFF //

void mousePressed() {
  if (mouseX > myInterface.margin && mouseX < width-myInterface.margin && mouseY > myInterface.margin && mouseY < height-myInterface.margin) {
    mouseLock = true;
  }
  myInterface.calcMouseDif();
}

void mouseDragged() {
  if (mouseLock) {
    myInterface.calcMouseDrag();
  }
}

void mouseReleased() {
  mouseLock = false;
}

void mouseWheel(MouseEvent event) { 
  float e = event.getCount(); // scrolling up = -1, scrolling down = +1
  scroll = e * constrain(log((0)+1800)/log(10000)*10, 1.0, 10.0);
  if (keyShift) {
    myInterface.scaleVertical();
  } else {
    myInterface.scaleHorizontal();
  }
}

void keyPressed() {
  if (keyCode == SHIFT) {
    keyShift = true;
  } else if (keyCode == UP) {
    //myData.printDatapoints();
  }
}

void keyReleased() {
  keyShift = false;
}

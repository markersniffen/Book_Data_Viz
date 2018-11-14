// CLASSES //
Interface myInterface;
Data myData;
DataInterface dataInterface;

String filename = "..\\..\\Database\\books_Mark Sniffen.csv";

boolean mouseLock;
float scroll;
int  scrollMult;
boolean keyShift = false;

void settings() {
  size(1920, 1080);
}

void setup() {
  myInterface = new Interface(200);
  myInterface.loadTheFonts();
  myInterface.initCenter();
  
  myData = new Data();
  myData.loadData("Mark's Data!", filename);
  myData.addDatapoints();
  
  myData.addDim("X Dimension");
  myData.addDim("Y Dimension");
  myData.addDim("Z Dimension");
  myData.addDim("SIZE Dimension");
  myData.addDim("COLOR Dimension");
  
  dataInterface = new DataInterface(myData.getColumnList(), myData.getDimList());

 


  
}

void draw() {
  myInterface.updateCenter();
  myInterface.drawBackground();
  myInterface.drawTestDataBox();



  myInterface.drawHud();
  dataInterface.display();
}





// INPUT STUFF //

void mousePressed() {
  if (mouseX > myInterface.margin && mouseX < width-myInterface.margin && mouseY > myInterface.margin && mouseY < height-myInterface.margin) {
    mouseLock = true;
  }
  myInterface.calcMouseDif();
  for (Button b : dataInterface.buttons) {
    b.buttonPressed();
  }
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
    dataInterface.flip();
  }
}

void keyReleased() {
  keyShift = false;
}

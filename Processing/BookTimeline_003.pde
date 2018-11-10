// CLASSES //
Interface myInterface;
Data myData;

String filename = "C:\\Users\\markersniffen\\Google Drive\\Projects\\BookTimeline\\Database\\books_Mark Sniffen.csv";

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
  myData.addDimension("Title", "x");
  myData.addDimension("ISBN", "y");
  myData.addDimension("Date Published", "col");

  myData.addDatapoints("Date Published", 0);
  myData.addDatapoints("Fiction", 1);
}

void draw() {
  myInterface.updateCenter();
  myInterface.drawBackground();
  myInterface.drawTestDataBox();

  myData.drawData(0, myInterface.left, myInterface.right);

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
  }
}

void keyReleased() {
  keyShift = false;
}

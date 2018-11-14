class DataInterface {
  boolean visible = false;
  String[] cols;
  String[] dims;
  
  Object[] selected = new Object[2];
  
  ArrayList<Button> buttons = new ArrayList<Button>();
  
  DataInterface(String[] cols_, String[] dims) {
    cols = cols_;
    for (int i = 0; i < cols.length; i++) {
      buttons.add(new Button(cols[i], width/2*.5, height*.25+(i*60), 500, 50, color(255,255,255), color(50,50,50)));
    }
    
    for (int i = 0; i < dims.length; i++) {
      buttons.add(new Button(dims[i], width/2*1.5, height*.25+(i*60), 500, 50, color(255,255,255), color(50,50,50)));
    } 
  }

  void display() {  
    if (visible) {
      strokeWeight(2);
      stroke(255);
      fill(80);
      rectMode(CENTER);
      rect(width/2, height/2, width-200, height-200);
      fill(255);
      for (int i = 0; i < buttons.size(); i++) {
        buttons.get(i).display();
      }
    }
  }
  
  void flip() {
    if (visible) {
      visible = false;
    } else {
      visible = true;
    }
  }
}

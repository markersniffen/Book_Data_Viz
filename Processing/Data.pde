class Data {
  
  String dataName; 
  Table table;
  ArrayList<Dimension> myDimensions = new ArrayList<Dimension>();
  
  void loadData(String name_, String dataFile_) {
    ArrayList<Dimension> myDimensions = new ArrayList<Dimension>();
    table = loadTable(dataFile_, "header");
    dataName = name_; // "Mark's Books"
  }
  
  void addDimension(String dim_, String axis_) {
    myDimensions.add(new Dimension(dim_, axis_));
  }
    
  
  void addDatapoints(String column_, int axis_) {
    for (int j = 0; j < table.getRowCount(); j++) {
      myDimensions.get(axis_).addData(table.getString(j, column_));
      myDimensions.get(axis_).max = float(max(table.getIntColumn(column_)));
      myDimensions.get(axis_).min = float(min(table.getIntColumn(column_)));
      //println(myDimensions.get(axis_).datapoints.get(j).value);
    }
  }
  void drawData(int axis_, float left_, float right_) {
    for (Datapoint d : myDimensions.get(axis_).datapoints) {
      float value = map(float(d.value), myDimensions.get(axis_).min, myDimensions.get(axis_).max, left_, right_);
      strokeWeight(10);
      point(value, myInterface.center.y);
    }
  }

  
  
  
  
  
}

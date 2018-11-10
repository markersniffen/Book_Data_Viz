class Data {
  
  String dataName; 
  Table table;
  ArrayList<Datapoint> data = new ArrayList<Datapoint>();
  ArrayList<String> strHeader = new ArrayList<String>();
  ArrayList<String> intHeader = new ArrayList<String>();
  
  void loadData(String name_, String dataFile_) {
    table = loadTable(dataFile_, "header");
    dataName = name_; // "Mark's Books"
    ArrayList<Datapoint> data = new ArrayList<Datapoint>();
    ArrayList<String> strHeader = new ArrayList<String>();
    ArrayList<String> intHeader = new ArrayList<String>();
    
  }
    
  void printTest() {
    println(data.size());
  }
  
  void addHeaders() {
    for (int i = 0; i < table.getColumnCount(); i++) {
      if (!isInteger(table.getString(0,i))) {
        strHeader.add(table.getColumnTitle(i));
      } else {
        intHeader.add(table.getColumnTitle(i));
      }
    }
    println(strHeader);
    println(intHeader);
  }
  
  
  void addDatapoints() {
    for (int r = 0; r < table.getRowCount(); r++) { // for every ROW..
      data.add(new Datapoint()); // add a new datapoint...
    }
    for (int r = 0; r < data.size(); r++){
      for (int i = 0; i < table.getColumnCount(); i++) {
        String col = table.getString(r,i);
        if (!isInteger(col)) {
          println("FOUND A STRING: " + table.getString(0, i));
          data.get(0).strVals.add((table.getString(r,i)));
        } else {
          println("FOUND AN INTEGER: " + table.getInt(0, i));
          data.get(0).intVals.add((table.getInt(r,i)));
        }
      }
    }
  }
  void printDatapoints() {
    for (int s = 0; s < strHeader.size(); s++) {
      println("DATAPOINT: " + strHeader.get(s));
      for (Datapoint d : data) {
        println(d.strVals.get(s));
      }
    }
    for (int i = 0; i < intHeader.size(); i++) {
      println("DATAPOINT: " + intHeader.get(i));
      for (Datapoint d : data) {
        println(d.intVals.get(i));
      }
    }
  }
    
  boolean isInteger(String s) {
    boolean result = false;
    try {
      Integer.parseInt(s);
      result = true;
    }
    catch(NumberFormatException e) {
    }
    //print(" The string'" + s +"' is ");
    //if (result)
    //  //println("an integer");
    //else
    //  //println("not an integer");
    return result;
  }

    
 
  
  
  
  
}

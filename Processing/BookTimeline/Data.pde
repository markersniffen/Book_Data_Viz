class Data {

  String dataName; 
  Table table;
  ArrayList<ArrayList<Datapoint>> data = new ArrayList<ArrayList<Datapoint>>();

  void loadData(String name_, String dataFile_) {
    table = loadTable(dataFile_, "header");
    dataName = name_; // "Mark's Books"
    ArrayList<ArrayList<Datapoint>> data = new ArrayList<ArrayList<Datapoint>>();
  }

  void addDatapoints() {
    for (int r = 0; r < table.getRowCount(); r++) {
      data.add(new ArrayList<Datapoint>());
      for (int i = 0; i < table.getColumnCount(); i++) {
        if (!isInteger(table.getString(r, i))) {
          data.get(r).add(new StringValue(table.getColumnTitle(r), table.getString(r,i)));
        } else {
          data.get(r).add(new IntValue(table.getColumnTitle(r), table.getString(r,i)));
        }
      }
    }
  }

  void printDatapoints() {
    for (ArrayList a : data) {
      //println(a);
      for (int c = 0; c < a.size(); c++) {
        Object myOb = a.get(c);
        println(myOb);
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
    return result;
  }
}

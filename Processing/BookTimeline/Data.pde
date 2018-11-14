class Data {

  String dataName; 
  Table table;
  ArrayList<ArrayList<Datapoint>> data = new ArrayList<ArrayList<Datapoint>>();

  ArrayList<Dimension> dims = new ArrayList<Dimension>();
  
  
  Data() {
    ArrayList<Dimension> dims = new ArrayList<Dimension>();
  }
  
  
  void addDim(String name_) {
    dims.add(new Dimension(name_));
  }


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
          data.get(r).add(new StringValue(table.getColumnTitle(i), table.getString(r,i)));
        } else {
          data.get(r).add(new IntValue(table.getColumnTitle(i), table.getInt(r,i)));
        }
      }
    }
  }

  void printDatapoints() {
    for (int a = 0; a < data.size(); a++) {
      for (int c = 0; c < data.get(a).size(); c++) {
        println(data.get(a).get(c).returnVal());
      }
    }
  }
  
  Object getDataVal(int row, int col) {
    return data.get(row).get(col).returnVal();
  }
  
  String[] getColumnList() {
    String[] cols = new String[data.get(0).size()];
    for (int a = 0; a < data.get(0).size(); a++) {
      cols[a] = data.get(0).get(a).name;
    }
    return cols;
  }
  
  String[] getDimList() {
    String[] dimNames = new String[dims.size()];
    for (int i = 0; i < dims.size(); i++) {
      dimNames[i] = dims.get(i).name;
    }
    return dimNames;
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

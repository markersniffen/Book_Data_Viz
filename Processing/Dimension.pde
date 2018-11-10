class Dimension {
  String name;
  String axis;
  Float min, max;
  ArrayList<Datapoint> datapoints = new ArrayList<Datapoint>();
  
  Dimension(String name_, String axis_) {
    name = name_;
    axis = axis_;
  }
  
  void addData(String val_) {
    datapoints.add(new Datapoint(val_));
  }
}

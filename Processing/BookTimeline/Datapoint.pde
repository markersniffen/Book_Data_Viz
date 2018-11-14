class Datapoint { 
  
  String name;
  Object value;
  
  Datapoint(String columnName_) {
    name = columnName_;
  }
  
  Object returnVal() {
    return value;
  }
  
  String returnName() {
    return name;
  }
}

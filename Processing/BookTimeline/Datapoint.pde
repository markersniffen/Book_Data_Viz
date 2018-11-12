class Datapoint { 
  
  final int VALUE_TYPE_INT = 0;
  final int VALUE_TYPE_STRING = 1;
  
  String name;
  String value;
  
  Datapoint(String columnName_) {
    name = columnName_;
  }
  
  public String returnVal() {
    return value;
  }
  
  public int getType() {
    return 0;
  }
}

class StringValue extends Datapoint {
  
  StringValue(String colName, String value_) {
    super(colName);
    this.value = value_;
  }
  
  int getType() {
    return super.VALUE_TYPE_STRING;
  }
}

class IntValue extends Datapoint {
  
  public IntValue(String colName, String value_) {
    super(colName);
    this.value = value_;
  }
  Integer returnVal() {
    return Integer.valueOf(value);
  }
  int getType() {
    return super.VALUE_TYPE_INT;
  }
}

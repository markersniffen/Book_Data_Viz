class StringValue extends Datapoint {
  
  StringValue(String colName, String value_) {
    super(colName);
    value = new String(value_);
  }
  
  Object returnVal() {
    return value;
  }
}

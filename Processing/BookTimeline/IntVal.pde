class IntValue extends Datapoint {
  
  IntValue(String colName, Integer value_) {
    super(colName);
    value = new Integer(value_);
  }
  
  Object returnVal() {
    return value;
  }
}

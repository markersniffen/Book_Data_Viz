//abstract class Value {
  
//  public final int VALUE_TYPE_INT = 0;
//  public final int VALUE_TYPE_STRING = 1;
  
//  protected Object value;
//  protected Value left, right, up, down;
 
//  public int getType();
  
//  public Object getValue()
//  {
//    return value;
//  }
  
  
//  private ArrayList<Value> myCol, myRow;
  
//  public ArrayList<Value> getColumn()
//  {
//    return myCol;
//  }
  
//  public ArrayList<Value> getRow()
//  {
//    return myRow;
//  }
//}

//class StringValue extends Value {
  
//  public StringValue( String v, ArrayList<Value> col, ArrayList<Value> row)
//  {
//    super.value =v;
//    super.myCol = col;
//    super.myRow = row;
    
//  }
  
//  int getType()
//  {
//      return Value::VALUE_TYPE_STRING;
//  }

//  String getStringValue()
//  {
//    return (String)value;
//  }
//}

//class IntValue extends Value {
  
//  public IntValue( int v )
//  {
//    this.value = new Integer(v);
//  }
  
//  int getType()
//  {
//      return Value::VALUE_TYPE_INT;
//  }
  
//  int getIntValue()
//  {
//      return ((Integer)value).toInt();
//  }
//}

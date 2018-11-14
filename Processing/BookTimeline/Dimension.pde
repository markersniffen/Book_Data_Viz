class Dimension {
  String name;
  Object linked;
  
  Dimension (String name_) {
    name = name_;
  } 
  
  void linkMe(Object link_) {
    linked = link_;
  }
  
  Object linked() {
    return linked;
  }
}

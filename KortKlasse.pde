class Kort{
  String name;
  int value;
  color c;
  
  public Kort(String name, int value, color c){
    this.name = name;
    this.value = value;
    this.c = c;
  }
  
  void display(){
    fill(51);
    rect(10,10, 60, 100, 10);
    fill(c);
    text(name, 20, 50);
  }
}

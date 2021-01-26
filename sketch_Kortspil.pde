Spil kortSpil = new Spil();

void setup(){
  clear();
  size(300, 300);
 
  
  kortSpil.lavKort();
}

void mousePressed(){
  kortSpil.traekKort();
}

void draw(){
  clear();
  if(kortSpil.trukket != null){
    kortSpil.trukket.display();
  }
  
  fill(255);
  text("Score: " + kortSpil.score, 100, 50);
  
  if(kortSpil.bunken.size() > 0){
    fill(51);
    rect(10, 120, 60, 100, 10);
    fill(255,0,0);
    rect(15, 125, 50, 90, 10);
    fill(0);
    text("Bunken\n" + kortSpil.bunken.size(), 20, 160);
  }
  else{
    text("Bunken er tom", 20, 160);
  }
}

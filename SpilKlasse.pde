import java.util.Collections;

public class Spil{
  ArrayList<Kort> bunken = new ArrayList<Kort>();
  public Kort trukket = null;
  public int score = 0;
  
  public void lavKort(){
    String[] kuloer = {"Blå", "Grøn", "Gul", "Rød"};
    color[] farver = {color(0, 0, 255), color(0, 255, 0), color(255, 255, 0), color(255, 0, 0)};
    
    for(int j=0; j<4; j++){
      for(int i=1; i<=13; i++){
        if(i == 13){
          bunken.add(new Kort(kuloer[j] + "\nSkip ", i, farver[j]));
        }
        else if(i == 12){
          bunken.add(new Kort(kuloer[j] + "\nDraw +2", i, farver[j]));
        }
        else if(i == 11){
          bunken.add(new Kort(kuloer[j] + "\nWild", i, farver[j]));
        }
        else if(i == 10){
          bunken.add(new Kort(kuloer[j] + "\nWild+4", i, farver[j]));
         }
        else if(i == 1){
          bunken.add(new Kort(kuloer[j] + "\nrev", i, farver[j]));  
        }
        else{
          bunken.add(new Kort(kuloer[j] + " " + i, i, farver[j]));
        }
      }
    }
    
    Collections.shuffle(bunken);
  }
  
  public void traekKort(){
    if(bunken.size() > 0){
      trukket = bunken.remove(0);
      score += trukket.value;
    }
  }
}

int animering =1;

void setup()
{
  //size of the window 
  size(768,432); 
   background(17, 13, 13);
  
}

void draw()
{
  
  //background, size and color
 background(110, 104, 104);
  stroke(227);
  strokeWeight(10.9);
 if (mouseX > 200) 
background(138,105,125);

{
  //skiftande bakgrund i färglinje rör med muspekaren över för resultat
  if (mouseX > 484)
  background(227,221,183);
}

//skiftande bakgrund i färglinje/insatt i mitt "I" skiftar en tredje färg
line(484,0,484,height);
line(484,0,484,height);

//förflyttning på A-linjen
  if (animering < 112)

  {
animering++;
  }
  
 
 //A
  line(animering, 98, 194, 316);
  line(112, 98, 26, 316);
  line(160, 224, 62, 224);
  

//color
  stroke(180);
 //M
 line(274, 98, 225, 316);
 line(274, 98, 363, 316);
 line(396, 98, 326, 316);
 
 line(396, 98, 455, 316);
 
 
 //color 
  stroke(227);
 //I
 line(484, 98, 484, 316);
 
 
 //color
  stroke(138);
 //E
 line(533, 98, 533, 316);
 line(534, 98, 668, 98);
 line(534, 199, 616, 200);
 line(533, 317, 668, 316);
 
 //stars, color, place
star(597,48);
star(589,383);
star(109,353);
star(335,60);
star(197,160);
star(346,378);
star(692,207);
star(55,54);
}


 //stars
void star(float x, float y) {
  fill(236,208,234);
  stroke(138,150,177);
  strokeWeight(2);
   beginShape();
 vertex(x, y-50);
 vertex(x+14, y-20);
 vertex(x+47, y-15);
 vertex(x+23, y+7);
 vertex(x+29, y+40);
 vertex(x, y+25);
 vertex(x-29, y+40);
 vertex(x-23, y+7);
 vertex(x-47, y-15);
 vertex(x-14, y-20);
 endShape(CLOSE);
 

}

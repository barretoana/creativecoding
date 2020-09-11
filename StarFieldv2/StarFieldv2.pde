Star[] stars = new Star[1200];

//reds and yellows
color[] red_yellow_green = { color(249, 65, 68), color(248, 150, 30),
                   color(243, 114, 44), color(249, 199, 79),
                   color(144,190,109), color(67,170,139),
                   color(243, 114, 44), color(87, 117, 144)}; 
                  
                   
//reds and yellows
color[] blue_purple = { color(116, 0, 184), color(105, 48, 195),
                   color(94, 96, 206), color(83, 144, 217),
                   color(78, 168, 222), color(72, 191, 227),
                   color(86, 207, 225), color(100, 223, 223),
                   color(114, 239, 221), color(128, 255, 219)}; 
                  
                        

float time = 1;
int rspeed = 0, factor = 1;
 
void setup() {
  //size(1920, 1030); 
  background(0); 
  colorMode(HSB);
  fullScreen();
    
  for(int i = 0; i < stars.length; i++) {
     stars[i] = new Star(); 
  }
 
}

void draw() { 
  
   fill(0, 10);
   rect(0, 0, width, height);
   
   pushMatrix();
   translate(width/2, height/2); 

   rotate(radians(1 * time) * rspeed);
   
   for(int i = 0; i < stars.length; i++) {
     stars[i].update(); 
     stars[i].show(); 
  }
   popMatrix();
   time ++; 
}

void keyPressed() {
   if (key=='1' && rspeed > 0) {
       rspeed--;
     } if (key=='2') {
       rspeed++;
     } if (key=='3') {
       rspeed *= -1;
     } if (key =='8') {
       rspeed = 0; 
     } if (key == '5') {
       factor *= -1;
     }
     print(rspeed);
}    

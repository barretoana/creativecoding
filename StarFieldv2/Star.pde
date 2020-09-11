class Star {
  float x, y, z, r;
  color c; 

  Star() { 
    x = random(-width, width); 
    y = random(-height, height);  
    z = random(width/2); 
    c = red_yellow_green[int(random(red_yellow_green.length-1))];
    r = random(6, 18);
  }

  void update() {
    z = z + map(mouseY * factor, 0, height, -10, 100);
    print(z);
    if (z > 900) {
      z = random(-width, width/2); 
      x = random(-width, width); 
      y = random(-height, height);
    }
  }

  void show() {
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height); 
    fill(c);
    noStroke(); 
    ellipse(sx, sy, 2*r, 2*r);
  }
}

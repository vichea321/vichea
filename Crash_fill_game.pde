float[] x, y;
float[] x1, y1;
float[] x3, y3;
float vx3,vy3;
float vx1,vy1;
float vx,vy;
void setup() {
  size(1000, 1000);
  x = new float[1];
  y = new float[1];
  x1 = new float[1];
  y1 = new float[1];
  x3 = new float[1];
  y3 = new float[1];
  for (int i = 0; i < 1; i++) {
    x[i] = random(width);
    y[i] = random(height);
    x1[i] = random(width);
    y1[i] = random(height);
    x3[i] = random(width);
    y3[i] = random(height);
    vy = random(-10,10);
    vx = random(-10,10);
    vy1 = random(-10,10);
    vx1 = random(-10,10);
    vy3 = random(-10,10);
    vx3 = random(-10,10);
     if(x[i]>width || x[i]<0) {vx = -vx; }
     if(y[i]>height || y[i]<0) {vy = -vy; }
     if(x1[i]>width || x1[i]<0) {vx1 = -vx; }
     if(y1[i]>height || y1[i]<0) {vy1 = -vy; }
     if(x3[i]>width || x3[i]<0) {vx3 = -vx; }
     if(y3[i]>height || y3[i]<0) {vy3 = -vy; }
  }
}
void draw() {
 background(#1CEA77);
  for (int i = 0; i < 1; i++) {
    vichea(x[i], y[i], 2);
    vichea1(x1[i], y1[i], 1.7);
    vichea3(x3[i], y3[i], 2.9);
     x[i] += vx;
     y[i] += vy;
     x1[i] += vx1;
     y1[i] += vy1;
     x3[i] += vx3;
     y3[i] += vy3;
     if(x[i]>width || x[i]<0) {vx = -vx; }
     if(y[i]>height || y[i]<0) {vy = -vy; }
     if(x1[i]>width || x1[i]<0) {vx1 = -vx; }
     if(y1[i]>height || y1[i]<0) {vy1 = -vy; }
     if(x3[i]>width || x3[i]<0) {vx3 = -vx; }
     if(y3[i]>height || y3[i]<0) {vy3 = -vy; }
  }
}
void mouseReleased() {
  for (int i=0; i<1; i++) {
      x3[i]=mouseX;
      y3 [i]= mouseY;}
}

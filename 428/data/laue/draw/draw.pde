PImage photo;
PFont font;
final int WIDTH = 2448/4;
final int HEIGHT = 3264/4;
final int NUMBER = 87;
float[] x_raw = new float[NUMBER];
float[] y_raw = new float[NUMBER];

float[] x = new float[NUMBER];
float[] y = new float[NUMBER];

float[][] theo6, theo8, theo12;

float factor = 0.0214765*4;

int count = 0;

void setup() {
  size(816,612);
  noLoop();
  photo = loadImage("F:/Friedrich/2017/Praktikum4/428/data/laue/laue.jpeg");
  photo.resize(408*2,0);
  
  String[] lines = loadStrings("../points.txt");
  for(int i=1;i<lines.length-1;i++){
    //println(lines[i]);
    String[] line = split(lines[i], '\t');
    //println(line.length);
    int index = i-1;
    println(line[5]+ " " + line[6]);
    x_raw[index] = float(line[5])/factor;
    y_raw[index] = float(line[6])/factor;
  }
  
  lines = loadStrings("../miller.txt");
  for(int i=0;i<lines.length;i++){
    println(lines[i]);
    String[] line = split(lines[i], '\t');
    println(line.length);
    if(line.length < 3){
      x[i] = -100;
      y[i] = -100;
    }else{
      x[i] = convertx(float(line[4]));
      y[i] = converty(float(line[5]));
    }
  }

  font = createFont("Calibri-12.vlw", 12);
  textFont(font);
  
  theo6 = calcpoints(6,10);
  theo8 = calcpoints(8,10);
  theo12 = calcpoints(12,10);
}


void draw() {
  println("draw");

  image(photo, 0, 0);
  fill(0, 0, 255);
  ellipse(34.534/factor, 27.662/factor, 5, 5);
  fill(255, 0, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x_raw[i], y_raw[i], 5, 5);
    text(""+(i+1), x_raw[i], y_raw[i]);
  }
  
  save("laue_before.png");
  
  fill(0, 255, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x[i], y[i], 5, 5);
    text(""+(i+1), x[i], y[i]);
  }
  save("laue.png");
  
  clear();
  image(photo, 0, 0);
  fill(255, 0, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x_raw[i], y_raw[i], 5, 5);
    //text(""+(i+1), x_raw[i], y_raw[i]);
  }
  fill(0, 0, 255);
  for(int i=0;theo6[i].length > 0;i++){
    float[] pos = theo6[i];
    ellipse(pos[0], pos[1], 5, 5);
  }
  save("laue_theo6.png");
  
  clear();
  image(photo, 0, 0);
  fill(255, 0, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x_raw[i], y_raw[i], 5, 5);
    //text(""+(i+1), x_raw[i], y_raw[i]);
  }
  fill(0, 0, 255);
  for(int i=0;theo8[i].length > 0;i++){
    float[] pos = theo8[i];
    ellipse(pos[0], pos[1], 5, 5);
  }
  save("laue_theo8.png");
  
  clear();
  image(photo, 0, 0);
  fill(255, 0, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x_raw[i], y_raw[i], 5, 5);
    //text(""+(i+1), x_raw[i], y_raw[i]);
  }
  fill(0, 0, 255);
  for(int i=0;theo12[i].length > 0;i++){
    float[] pos = theo12[i];
    ellipse(pos[0], pos[1], 5, 5);
  }
  save("laue_theo12.png");
}

float convertx(float x){
  return (x+34.534)/factor;
}

float converty(float y){
  return (y+27.662)/factor;
}

float[][] calcpoints(int millermax, float l0){
  float[][] ret = new float[10000][2];
  int index = 0;
  for(int l=1;l<=millermax;l++){
    for(int k=-millermax+(l%2);k<=millermax;k+=2){
      for(int h=-millermax+(l%2);h<=millermax;h+=2){
        //println(h + " " + k + " " + l);
        if(k*k+h*h==l*l) continue;
        float alpha = (2*l*l0)/(k*k+h*h-l*l);
        if(alpha < 0){
          ret[index] = new float[]{-10000,-10000};
          continue;
        }
        float[] pos = new float[2];
        pos[0] = convertx(alpha * h);
        pos[1] = converty(alpha * k);
        ret[index] = pos;
        index++;
      }
    }
  }
  ret[index] = new float[0];
  return ret;
}